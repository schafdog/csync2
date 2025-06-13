#!/bin/bash
# PostgreSQL Connection Examples for GitHub Actions
# This script demonstrates various ways to connect to PostgreSQL in CI/CD

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

# Default connection parameters (GitHub Actions service)
PGHOST=${PGHOST:-localhost}
PGPORT=${PGPORT:-5432}
PGUSER=${PGUSER:-postgres}
PGPASSWORD=${PGPASSWORD:-postgres}
PGDATABASE=${PGDATABASE:-postgres}

echo_info "PostgreSQL Connection Examples"
echo "Host: $PGHOST:$PGPORT"
echo "User: $PGUSER"
echo "Database: $PGDATABASE"
echo ""

# Method 1: Command line parameters
echo_info "=== Method 1: Command Line Parameters ==="
psql -h "$PGHOST" -p "$PGPORT" -U "$PGUSER" -d "$PGDATABASE" -c "
    SELECT 'Method 1: CLI Parameters' as method, 
           current_user as user, 
           current_database() as database,
           version() as version;
"
echo ""

# Method 2: Environment variables
echo_info "=== Method 2: Environment Variables ==="
export PGHOST PGPORT PGUSER PGPASSWORD PGDATABASE
psql -c "
    SELECT 'Method 2: Environment Variables' as method,
           current_user as user,
           current_database() as database;
"
echo ""

# Method 3: Connection string
echo_info "=== Method 3: Connection String ==="
CONNECTION_STRING="postgresql://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE"
psql "$CONNECTION_STRING" -c "
    SELECT 'Method 3: Connection String' as method,
           current_user as user,
           current_database() as database;
"
echo ""

# Method 4: .pgpass file (for production use)
echo_info "=== Method 4: .pgpass File Example ==="
echo "# .pgpass file format: hostname:port:database:username:password"
echo "# Example:"
echo "localhost:5432:*:postgres:postgres"
echo "localhost:5432:csync2_local:csync2:csync238"
echo "localhost:5432:csync2_peer:csync2:csync238"
echo ""

# Test database operations
echo_info "=== Testing Database Operations ==="

# Check if we can create databases
echo_info "Testing database creation permissions..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "
    SELECT 
        current_user as current_user,
        usesuper as is_superuser,
        usecreatedb as can_create_db
    FROM pg_user 
    WHERE usename = current_user;
"

# Create test user and database
echo_info "Creating test user and database..."

# Drop existing resources (separate commands to avoid transaction issues)
echo_info "Cleaning up existing resources..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP DATABASE IF EXISTS test_github_actions;" || true
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP USER IF EXISTS test_user;" || true

# Create test user (separate commands)
echo_info "Creating test user..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "CREATE USER test_user WITH PASSWORD 'test_password';"
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "ALTER USER test_user CREATEDB;"

# Create test database with C collation (separate command)
echo_info "Creating test database with C collation..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "
    CREATE DATABASE test_github_actions
        OWNER test_user
        LC_COLLATE='C'
        LC_CTYPE='C'
        TEMPLATE template0;"

# Grant permissions (separate command)
echo_info "Granting permissions..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "GRANT ALL PRIVILEGES ON DATABASE test_github_actions TO test_user;"

# Test connection with new user
echo_info "Testing connection with test user..."
PGPASSWORD=test_password psql -h "$PGHOST" -U test_user -d test_github_actions -c "
    -- Grant schema permissions
    GRANT ALL PRIVILEGES ON SCHEMA public TO test_user;
    
    -- Create test table
    CREATE TABLE test_files (
        id SERIAL PRIMARY KEY,
        filename VARCHAR(255) NOT NULL,
        checksum VARCHAR(64),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
    
    -- Insert test data
    INSERT INTO test_files (filename, checksum) VALUES
        ('file1.txt', 'abc123'),
        ('.hidden', 'def456'),
        ('File2.txt', 'ghi789'),
        ('dir/', 'jkl012');
    
    -- Test collation behavior (critical for csync2)
    SELECT 'Testing C collation sorting:' as test;
    SELECT filename FROM test_files ORDER BY filename COLLATE \"C\" DESC;
"

# Test SQL script execution
echo_info "=== Testing SQL Script Execution ==="
cat > /tmp/test_script.sql << 'EOF'
-- Test SQL script for GitHub Actions
\echo 'Executing test script...'

-- Show current connection info
SELECT 
    current_user as user,
    current_database() as database,
    current_timestamp as executed_at;

-- Test table operations
CREATE TEMP TABLE script_test (
    id SERIAL PRIMARY KEY,
    message TEXT,
    executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO script_test (message) VALUES 
    ('Script executed successfully'),
    ('GitHub Actions PostgreSQL test');

SELECT message, executed_at FROM script_test;

\echo 'Script execution completed!'
EOF

echo_info "Executing SQL script..."
PGPASSWORD=test_password psql -h "$PGHOST" -U test_user -d test_github_actions -f /tmp/test_script.sql

# Test backup and restore
echo_info "=== Testing Backup and Restore ==="
echo_info "Creating database backup..."
PGPASSWORD=test_password pg_dump -h "$PGHOST" -U test_user -d test_github_actions > /tmp/backup.sql

echo "Backup created: $(wc -l < /tmp/backup.sql) lines"
echo "Backup size: $(du -h /tmp/backup.sql | cut -f1)"

# Show backup preview
echo_info "Backup preview (first 10 lines):"
head -10 /tmp/backup.sql

# Test performance
echo_info "=== Performance Test ==="
PGPASSWORD=test_password psql -h "$PGHOST" -U test_user -d test_github_actions -c "
    -- Create larger test dataset
    CREATE TEMP TABLE perf_test AS 
    SELECT 
        'file_' || generate_series(1, 10000) as filename,
        md5(random()::text) as checksum,
        now() - (random() * interval '30 days') as created_at;
    
    -- Test query performance
    \timing on
    SELECT count(*) as total_files FROM perf_test;
    SELECT count(*) as files_with_prefix FROM perf_test WHERE filename LIKE 'file_1%';
    \timing off
"

# Connection troubleshooting
echo_info "=== Connection Troubleshooting ==="
echo_info "Testing connection health..."

# Test pg_isready
if pg_isready -h "$PGHOST" -p "$PGPORT" -U "$PGUSER"; then
    echo_info "PostgreSQL is ready and accepting connections"
else
    echo_error "PostgreSQL is not ready"
fi

# Show active connections
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "
    SELECT 
        datname as database,
        usename as user,
        client_addr as client_ip,
        state,
        query_start
    FROM pg_stat_activity 
    WHERE datname IS NOT NULL
    ORDER BY query_start DESC;
"

# Show database sizes
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "
    SELECT 
        datname as database,
        pg_size_pretty(pg_database_size(datname)) as size,
        datcollate as collation,
        datctype as ctype
    FROM pg_database 
    WHERE datname NOT IN ('template0', 'template1')
    ORDER BY pg_database_size(datname) DESC;
"

# Cleanup
echo_info "=== Cleanup ==="
echo_info "Dropping test database..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP DATABASE IF EXISTS test_github_actions;" || true

echo_info "Dropping test user..."
psql -h "$PGHOST" -U "$PGUSER" -d "$PGDATABASE" -c "DROP USER IF EXISTS test_user;" || true

# Clean up temporary files
rm -f /tmp/test_script.sql /tmp/backup.sql

echo_info "PostgreSQL connection examples completed successfully!"
echo ""
echo_info "Key takeaways for GitHub Actions:"
echo "1. Use services.postgres with health checks"
echo "2. Set PGPASSWORD environment variable"
echo "3. Use -h localhost for TCP connections"
echo "4. Wait for pg_isready before running tests"
echo "5. Use C collation for consistent sorting"
echo "6. Grant proper permissions to test users"
echo "7. Test both admin and user connections"
