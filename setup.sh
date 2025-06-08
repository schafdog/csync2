#!/bin/bash
#
# csync2 - cluster synchronization tool, 2nd generation
# Setup script for PostgreSQL databases required for testing
#
# This script creates the PostgreSQL databases and user needed for csync2 tests
#

set -e  # Exit on any error

echo "Setting up PostgreSQL databases for csync2 tests..."
#DO_POSTGRES_SUDO="sudo -u postgres"
CONNECT_DB_HOST="-h localhost"
# Check if PostgreSQL is running
if ! systemctl is-active --quiet postgresql 2>/dev/null && ! pgrep -x postgres >/dev/null 2>&1; then
    echo "Error: PostgreSQL is not running. Please start PostgreSQL first."
    echo "You can start it with: sudo systemctl start postgresql"
    exit 1
fi

# Function to execute SQL commands as postgres user
execute_sql() {
    local sql_command="$1"
    echo "Executing: $sql_command"
    $DO_POSTGRES_SUDO psql ${CONNECT_DB_HOST} -c "$sql_command" postgres
}

# Create user csync2 if it doesn't exist
echo "Creating PostgreSQL user 'csync2'..."
if ${DO_POSTGRES_SUDO} psql ${CONNECT_DB_HOST} -tAc "SELECT 1 FROM pg_roles WHERE rolname='csync2'" postgres | grep -q 1; then
    echo "User 'csync2' already exists, skipping user creation."
else
    execute_sql "CREATE USER csync2 WITH ENCRYPTED PASSWORD 'csync238';"
    echo "User 'csync2' created successfully."
fi

# Create database csync2_local if it doesn't exist
echo "Creating database 'csync2_local'..."
if ${DO_POSTGRES_SUDO} psql ${CONNECT_DB_HOST} -lqt postgres | cut -d \| -f 1 | grep -qw csync2_local; then
    echo "Database 'csync2_local' already exists, skipping database creation."
else
    execute_sql "CREATE DATABASE csync2_local;"
    echo "Database 'csync2_local' created successfully."
fi

# Create database csync2_peer if it doesn't exist
echo "Creating database 'csync2_peer'..."
if ${DO_POSTGRES_SUDO} psql ${CONNECT_DB_HOST} -lqt postgres | cut -d \| -f 1 | grep -qw csync2_peer; then
    echo "Database 'csync2_peer' already exists, skipping database creation."
else
    execute_sql "CREATE DATABASE csync2_peer;"
    echo "Database 'csync2_peer' created successfully."
fi

# Grant privileges on csync2_local
echo "Granting privileges on 'csync2_local' to user 'csync2'..."
execute_sql "GRANT ALL PRIVILEGES ON DATABASE csync2_local TO csync2;"

# Grant privileges on csync2_peer
echo "Granting privileges on 'csync2_peer' to user 'csync2'..."
execute_sql "GRANT ALL PRIVILEGES ON DATABASE csync2_peer TO csync2;"

echo ""
echo "PostgreSQL setup completed successfully!"
echo ""
echo "Created:"
echo "  - User: csync2 (password: csync238)"
echo "  - Database: csync2_local"
echo "  - Database: csync2_peer"
echo ""
echo "You can now run the csync2 tests that require PostgreSQL databases."
echo ""
echo "To connect to the databases manually:"
echo "  psql -U csync2 csync2_local"
echo "  psql -U csync2 csync2_peer"
