# GitHub Actions with PostgreSQL

This document explains how to set up and use PostgreSQL in GitHub Actions workflows, with specific examples for the csync2 project.

## Quick Start

### Basic PostgreSQL Service

```yaml
services:
  postgres:
    image: postgres:15
    env:
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
      POSTGRES_DB: testdb
    options: >-
      --health-cmd pg_isready
      --health-interval 10s
      --health-timeout 5s
      --health-retries 5
    ports:
      - 5432:5432
```

### Basic Connection Test

```yaml
- name: Test PostgreSQL connection
  env:
    PGPASSWORD: postgres
  run: |
    # Wait for PostgreSQL
    until pg_isready -h localhost -p 5432 -U postgres; do
      sleep 2
    done
    
    # Test connection
    psql -h localhost -U postgres -d testdb -c "SELECT version();"
```

## Connection Methods

### 1. Command Line Parameters

```bash
psql -h localhost -p 5432 -U username -d database -c "SELECT 1;"
```

### 2. Environment Variables

```bash
export PGHOST=localhost
export PGPORT=5432
export PGUSER=username
export PGPASSWORD=password
export PGDATABASE=database
psql -c "SELECT 1;"
```

### 3. Connection String

```bash
psql "postgresql://username:password@localhost:5432/database" -c "SELECT 1;"
```

## Csync2-Specific Setup

### Complete Workflow Example

See `.github/workflows/csync2-build-test.yml` for a complete example that:

1. **Sets up PostgreSQL service** with health checks
2. **Creates csync2 user and databases** with proper permissions
3. **Uses C collation** for consistent cross-platform sorting
4. **Builds csync2** with PostgreSQL support
5. **Runs tests** with database connectivity
6. **Checks warning counts** from enhanced compiler warnings

### Key Configuration

```yaml
services:
  postgres:
    image: postgres:15
    env:
      POSTGRES_PASSWORD: csync238  # csync2 default password
      POSTGRES_USER: postgres
      POSTGRES_DB: postgres
    options: >-
      --health-cmd pg_isready
      --health-interval 10s
      --health-timeout 5s
      --health-retries 5
    ports:
      - 5432:5432
```

### Database Setup

```bash
# Create csync2 user
PGPASSWORD=csync238 psql -h localhost -U postgres -c "
  CREATE USER csync2 WITH PASSWORD 'csync238';
  ALTER USER csync2 CREATEDB;
"

# Create databases with C collation (important for csync2!)
PGPASSWORD=csync238 psql -h localhost -U postgres -c "
  CREATE DATABASE csync2_local OWNER csync2 LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;
  CREATE DATABASE csync2_peer OWNER csync2 LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;
"

# Grant permissions
PGPASSWORD=csync238 psql -h localhost -U postgres -d csync2_local -c "
  GRANT ALL PRIVILEGES ON DATABASE csync2_local TO csync2;
  GRANT ALL PRIVILEGES ON SCHEMA public TO csync2;
"
```

## Best Practices

### 1. Health Checks

Always use health checks to ensure PostgreSQL is ready:

```yaml
options: >-
  --health-cmd pg_isready
  --health-interval 10s
  --health-timeout 5s
  --health-retries 5
```

### 2. Wait for Ready

```bash
until pg_isready -h localhost -p 5432 -U postgres; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done
```

### 3. Use TCP Connections

Always use `-h localhost` for TCP connections in CI:

```bash
psql -h localhost -U username -d database
```

### 4. Environment Variables

Set `PGPASSWORD` to avoid password prompts:

```yaml
env:
  PGPASSWORD: your_password
```

### 5. Collation for csync2

Use `C` collation for consistent sorting across platforms:

```sql
CREATE DATABASE dbname LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;
```

### 6. Permission Management

Grant proper permissions for test users:

```sql
GRANT ALL PRIVILEGES ON DATABASE dbname TO username;
GRANT ALL PRIVILEGES ON SCHEMA public TO username;
```

## Testing Examples

### Basic Functionality Test

```bash
# Test connection
psql -h localhost -U csync2 -d csync2_local -c "SELECT current_user, current_database();"

# Test collation behavior
psql -h localhost -U csync2 -d csync2_local -c "
  CREATE TEMP TABLE test_sort (name TEXT);
  INSERT INTO test_sort VALUES ('file1'), ('.hidden'), ('File2');
  SELECT name FROM test_sort ORDER BY name COLLATE \"C\" DESC;
"
```

### Schema Creation

```bash
# Create csync2 schema
if [ -f test/create_csync2_schema.sql ]; then
  PGPASSWORD=csync238 psql -U csync2 -h localhost -d csync2_local -f test/create_csync2_schema.sql
fi

# Verify tables
PGPASSWORD=csync238 psql -U csync2 -h localhost -d csync2_local -c "\d"
```

### Performance Testing

```bash
# Simple performance test
time psql -h localhost -U csync2 -d csync2_local -c "
  CREATE TEMP TABLE perf_test AS 
  SELECT generate_series(1, 10000) as id, md5(random()::text) as data;
  SELECT count(*) FROM perf_test;
"
```

## Troubleshooting

### Common Issues

1. **Connection refused**: PostgreSQL service not ready
   - Solution: Use health checks and `pg_isready`

2. **Permission denied**: User lacks privileges
   - Solution: Grant proper permissions with `GRANT ALL PRIVILEGES`

3. **Database does not exist**: Database not created
   - Solution: Create database before connecting

4. **Collation issues**: Different sorting behavior
   - Solution: Use `LC_COLLATE='C'` for consistent sorting

### Debugging Commands

```bash
# Check PostgreSQL status
pg_isready -h localhost -p 5432 -U postgres

# Show active connections
psql -h localhost -U postgres -c "
  SELECT datname, usename, client_addr, state 
  FROM pg_stat_activity 
  WHERE datname IS NOT NULL;
"

# Show database collations
psql -h localhost -U postgres -c "
  SELECT datname, datcollate, datctype 
  FROM pg_database 
  WHERE datname LIKE 'csync2_%';
"

# Test user permissions
psql -h localhost -U csync2 -d csync2_local -c "
  SELECT current_user, has_database_privilege(current_user, current_database(), 'CREATE');
"
```

## Multiple PostgreSQL Versions

Test against multiple PostgreSQL versions:

```yaml
strategy:
  matrix:
    postgres-version: [12, 13, 14, 15, 16]

services:
  postgres:
    image: postgres:${{ matrix.postgres-version }}
```

## Files in This Repository

- `.github/workflows/postgresql-test.yml` - Comprehensive PostgreSQL testing workflow
- `.github/workflows/csync2-build-test.yml` - Csync2-specific build and test workflow  
- `scripts/postgres-connection-examples.sh` - Executable script demonstrating all connection methods

## Usage

1. Copy the appropriate workflow file to your `.github/workflows/` directory
2. Modify database names, users, and passwords as needed
3. Add your specific build and test steps
4. Commit and push to trigger the workflow

The workflows will automatically set up PostgreSQL, create the necessary databases and users, and run your tests with proper database connectivity.
