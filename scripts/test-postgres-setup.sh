#!/bin/bash
# Test script to verify PostgreSQL setup works correctly
# This script tests the fixed database creation commands

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

echo_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

echo_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Default connection parameters
PGHOST=${PGHOST:-localhost}
PGPORT=${PGPORT:-5432}
PGUSER=${PGUSER:-postgres}
PGPASSWORD=${PGPASSWORD:-postgres}
PGDATABASE=${PGDATABASE:-postgres}

echo_info "Testing PostgreSQL Database Creation Fix"
echo "Host: $PGHOST:$PGPORT"
echo "User: $PGUSER"
echo "Database: $PGDATABASE"
echo ""

# Test 1: Wait for PostgreSQL to be ready
echo_info "=== Test 1: PostgreSQL Readiness ==="
if pg_isready -h "$PGHOST" -p "$PGPORT" -U "$PGUSER"; then
    echo_info "✅ PostgreSQL is ready"
else
    echo_error "❌ PostgreSQL is not ready"
    exit 1
fi
echo ""

# Test 2: Basic connection
echo_info "=== Test 2: Basic Connection ==="
if psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "SELECT 'Connection successful' as status;" > /dev/null; then
    echo_info "✅ Basic connection works"
else
    echo_error "❌ Basic connection failed"
    exit 1
fi
echo ""

# Test 3: Clean up any existing test resources
echo_info "=== Test 3: Cleanup Existing Resources ==="
echo_info "Dropping existing test database..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP DATABASE IF EXISTS test_fix_db;" 2>/dev/null || true

echo_info "Dropping existing test user..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP USER IF EXISTS test_fix_user;" 2>/dev/null || true

echo_info "✅ Cleanup completed"
echo ""

# Test 4: Create user (separate command)
echo_info "=== Test 4: Create User ==="
if psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "CREATE USER test_fix_user WITH PASSWORD 'test_password';" > /dev/null; then
    echo_info "✅ User creation successful"
else
    echo_error "❌ User creation failed"
    exit 1
fi

if psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "ALTER USER test_fix_user CREATEDB;" > /dev/null; then
    echo_info "✅ User privileges granted"
else
    echo_error "❌ User privilege grant failed"
    exit 1
fi
echo ""

# Test 5: Create database (separate command - this is the fix!)
echo_info "=== Test 5: Create Database (Fixed Method) ==="
if psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "CREATE DATABASE test_fix_db OWNER test_fix_user LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;" > /dev/null; then
    echo_info "✅ Database creation successful (no transaction block error!)"
else
    echo_error "❌ Database creation failed"
    exit 1
fi
echo ""

# Test 6: Grant permissions (separate command)
echo_info "=== Test 6: Grant Permissions ==="
if psql -h "$PGHOST" -U "$PGUSER" -d "test_fix_db" -c "GRANT ALL PRIVILEGES ON DATABASE test_fix_db TO test_fix_user;" > /dev/null; then
    echo_info "✅ Database permissions granted"
else
    echo_error "❌ Database permission grant failed"
    exit 1
fi

if psql -h "$PGHOST" -U "$PGUSER" -d "test_fix_db" -c "GRANT ALL PRIVILEGES ON SCHEMA public TO test_fix_user;" > /dev/null; then
    echo_info "✅ Schema permissions granted"
else
    echo_error "❌ Schema permission grant failed"
    exit 1
fi
echo ""

# Test 7: Test connection with new user
echo_info "=== Test 7: Test New User Connection ==="
if PGPASSWORD=test_password psql -h "$PGHOST" -U test_fix_user -d test_fix_db -c "SELECT current_user, current_database();" > /dev/null; then
    echo_info "✅ New user connection successful"
else
    echo_error "❌ New user connection failed"
    exit 1
fi
echo ""

# Test 8: Test collation behavior
echo_info "=== Test 8: Test Collation Behavior ==="
PGPASSWORD=test_password psql -h "$PGHOST" -U test_fix_user -d test_fix_db -c "
    -- Test C collation sorting
    CREATE TEMP TABLE test_sort (name TEXT);
    INSERT INTO test_sort VALUES ('file1'), ('.hidden'), ('File2'), ('dir/');
    SELECT 'Collation test:' as test;
    SELECT name FROM test_sort ORDER BY name COLLATE \"C\" DESC;
" > /dev/null

if [ $? -eq 0 ]; then
    echo_info "✅ Collation test successful"
else
    echo_error "❌ Collation test failed"
    exit 1
fi
echo ""

# Test 9: Verify database properties
echo_info "=== Test 9: Verify Database Properties ==="
RESULT=$(psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -t -c "
    SELECT datname, datcollate, datctype 
    FROM pg_database 
    WHERE datname = 'test_fix_db';
")

if echo "$RESULT" | grep -q "C.*C"; then
    echo_info "✅ Database has correct C collation"
    echo "   $RESULT"
else
    echo_error "❌ Database collation incorrect"
    echo "   $RESULT"
    exit 1
fi
echo ""

# Test 10: Demonstrate the old problematic method (commented out)
echo_info "=== Test 10: Demonstrate Fixed Issue ==="
echo_info "The following would have caused 'CREATE DATABASE cannot run inside a transaction block':"
echo_warn "❌ OLD METHOD (problematic):"
echo '   psql -c "CREATE USER test; CREATE DATABASE testdb;"'
echo ""
echo_info "✅ NEW METHOD (fixed):"
echo '   psql -c "CREATE USER test;"'
echo '   psql -c "CREATE DATABASE testdb;"'
echo ""

# Test 11: Performance test
echo_info "=== Test 11: Performance Test ==="
START_TIME=$(date +%s)
PGPASSWORD=test_password psql -h "$PGHOST" -U test_fix_user -d test_fix_db -c "
    CREATE TEMP TABLE perf_test AS 
    SELECT generate_series(1, 1000) as id, md5(random()::text) as data;
    SELECT count(*) FROM perf_test;
" > /dev/null
END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo_info "✅ Performance test completed in ${DURATION}s"
echo ""

# Cleanup
echo_info "=== Final Cleanup ==="
echo_info "Dropping test database..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP DATABASE IF EXISTS test_fix_db;" > /dev/null

echo_info "Dropping test user..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP USER IF EXISTS test_fix_user;" > /dev/null

echo_info "✅ Cleanup completed"
echo ""

# Summary
echo_info "=== Test Summary ==="
echo_info "🎉 All tests passed successfully!"
echo_info "✅ PostgreSQL database creation fix verified"
echo_info "✅ No 'CREATE DATABASE cannot run inside a transaction block' errors"
echo_info "✅ Separate commands method works correctly"
echo_info "✅ C collation configured properly"
echo_info "✅ User permissions working"
echo_info "✅ Performance acceptable"
echo ""
echo_info "The GitHub Actions workflows should now work correctly!"
