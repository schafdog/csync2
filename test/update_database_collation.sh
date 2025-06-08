#!/bin/bash
#
# update_database_collation.sh - Update PostgreSQL databases to use en_US.utf8 collation
#
# This script recreates the csync2 test databases with the correct collation to match
# Linux systems, ensuring consistent sorting behavior across platforms.
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Updating PostgreSQL database collation for cross-platform compatibility...${NC}"

# Use C collation for consistent sorting behavior across platforms
COLLATION="C"
echo -e "${GREEN}Using collation: $COLLATION${NC}"

# PostgreSQL connection settings
# Use current user for database management operations
PSQL_ADMIN="psql -h localhost"
# Use csync2 user for schema operations (matching test infrastructure)
export PGPASSWORD=csync238
PSQL_CSYNC2="psql -U csync2 -h localhost"

# Function to recreate a database with correct collation
recreate_database() {
    local dbname=$1
    local username=${2:-$USER}
    
    echo -e "${YELLOW}Recreating database: $dbname${NC}"
    
    # Check if database exists
    if $PSQL_ADMIN -d postgres -t -c "SELECT 1 FROM pg_database WHERE datname = '$dbname';" | grep -q 1; then
        echo "  - Dropping existing database $dbname"
        $PSQL_ADMIN -d postgres -c "DROP DATABASE IF EXISTS $dbname;"
    fi

    # Create database with correct collation
    echo "  - Creating database $dbname with collation $COLLATION"
    $PSQL_ADMIN -d postgres -c "CREATE DATABASE $dbname OWNER $username LC_COLLATE='$COLLATION' LC_CTYPE='$COLLATION' TEMPLATE template0;"

    # Grant permissions to csync2 user
    echo "  - Granting permissions to csync2 user"
    $PSQL_ADMIN -d $dbname -c "GRANT ALL PRIVILEGES ON DATABASE $dbname TO csync2;"
    $PSQL_ADMIN -d $dbname -c "GRANT ALL PRIVILEGES ON SCHEMA public TO csync2;"

    # Create the correct schema
    echo "  - Creating csync2 schema in $dbname"
    if [ -f "create_csync2_schema.sql" ]; then
        $PSQL_CSYNC2 -d $dbname -f "create_csync2_schema.sql" > /dev/null
    else
        echo -e "${RED}Error: Could not find create_csync2_schema.sql schema file${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}  ✓ Database $dbname recreated successfully${NC}"
}

# Get the current user for database ownership
DB_USER=${PGUSER:-$USER}

# Recreate both test databases
recreate_database "csync2_local" "$DB_USER"
recreate_database "csync2_peer" "$DB_USER"

# Verify the collation settings
echo -e "${YELLOW}Verifying database collation settings:${NC}"
$PSQL_ADMIN -d postgres -c "SELECT datname, datcollate, datctype FROM pg_database WHERE datname LIKE 'csync2_%' ORDER BY datname;"

echo -e "${GREEN}Database collation update completed successfully!${NC}"
echo ""
echo "The databases now use $COLLATION collation, which should provide consistent"
echo "sorting behavior with Linux systems running PostgreSQL."
