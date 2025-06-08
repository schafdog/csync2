# PostgreSQL Database Collation Setup for Cross-Platform Compatibility

## Overview

This document describes the PostgreSQL database collation setup for csync2 tests to ensure consistent sorting behavior between macOS and Linux systems.

## Problem

PostgreSQL databases created on different systems may use different collations:
- **Linux**: May use `en_US.utf8` or `C` collation
- **macOS**: May use `en_US.UTF-8` or `C` collation

Different collations cause inconsistent sorting in database queries, especially for the `ORDER BY filename DESC` queries in csync2's dirty table processing. This leads to test failures when comparing results between platforms because dotfiles (like `.Trash`) sort differently relative to regular files.

## Solution

### 1. Database Collation Update Script

**File**: `update_database_collation.sh`

This script:
- Uses `C` collation for consistent cross-platform sorting behavior
- Connects via TCP to localhost (matching test infrastructure)
- Recreates the csync2 databases with the proper collation
- Grants proper permissions to the csync2 user
- Creates the correct database schema using `create_csync2_schema.sql`

**Usage**:
```bash
./update_database_collation.sh
```

### 2. Database Schema Creation

**File**: `create_csync2_schema.sql`

This SQL script creates the correct database schema that csync2 expects:

- **action** table: For action logging
- **host** table: For host status tracking  
- **dirty** table: For tracking files that need synchronization
- **file** table: For file metadata and checksums
- **hint** table: For synchronization hints
- **x509_cert** table: For SSL certificate storage

The schema includes all necessary columns, indexes, and constraints that csync2 requires.

### 3. Test Infrastructure Updates

**Modified Files**:
- `local.sh`: Removed explicit `COLLATE "C"` clauses from SQL queries
- `Makefile.am`: Added new scripts to distribution

## Implementation Details

### Collation Selection

The script uses `C` collation for consistent cross-platform behavior:

```bash
# Use C collation for consistent sorting behavior across platforms
COLLATION="C"
```

This ensures that database queries like `ORDER BY filename DESC` produce identical results on all platforms, particularly for sorting dotfiles relative to regular files.

### TCP Connection Usage

The script uses TCP connections to localhost (`-h localhost`) to match the test infrastructure:

- **Database management**: Uses current user with admin privileges
- **Schema creation**: Uses `csync2` user with `PGPASSWORD=csync238`
- **Consistent with tests**: Matches the connection method used by `connect_pgsql.sh`

### Database Recreation

Databases are recreated with explicit collation using TCP connections:

```bash
# Use current user for database management
psql -h localhost -d postgres -c "CREATE DATABASE csync2_local OWNER csync2 LC_COLLATE='C' LC_CTYPE='C' TEMPLATE template0;"

# Grant permissions to csync2 user
psql -h localhost -d csync2_local -c "GRANT ALL PRIVILEGES ON SCHEMA public TO csync2;"

# Create schema as csync2 user
PGPASSWORD=csync238 psql -U csync2 -h localhost -d csync2_local -f create_csync2_schema.sql
```

### Schema Creation

The schema is based on the actual csync2 source code (`src/db_postgres.c`) to ensure compatibility.

## Verification

After running the setup script, verify the configuration:

```bash
# Check database collation
psql -h localhost -d postgres -c "SELECT datname, datcollate, datctype FROM pg_database WHERE datname LIKE 'csync2_%';"

# Check schema
PGPASSWORD=csync238 psql -U csync2 -h localhost -d csync2_local -c "\d file"
```

Expected output:
```
   datname    | datcollate | datctype
--------------+------------+----------
 csync2_local | C          | C
 csync2_peer  | C          | C
```

## Benefits

1. **Consistent sorting**: Database queries return results in the same order on all platforms
2. **Cross-platform compatibility**: Tests produce identical results on macOS and Linux
3. **Proper schema**: Ensures csync2 has all required database tables and columns
4. **Automated setup**: Single script handles the entire database configuration

## Troubleshooting

### Permission Issues

If you encounter permission errors, ensure the csync2 user exists and has proper privileges:

```sql
CREATE USER csync2 WITH ENCRYPTED PASSWORD 'csync238';
GRANT ALL PRIVILEGES ON DATABASE csync2_local TO csync2;
GRANT ALL PRIVILEGES ON DATABASE csync2_peer TO csync2;
```

### Collation Issues

The `C` collation should be available on all PostgreSQL installations. If you encounter issues, verify:

```sql
SELECT collname FROM pg_collation WHERE collname = 'C';
```

### Schema Issues

If csync2 reports missing tables or columns, re-run the schema creation:

```bash
psql -d csync2_local -f create_csync2_schema.sql
psql -d csync2_peer -f create_csync2_schema.sql
```

This setup ensures that csync2 tests run consistently across different platforms with proper database collation and schema.
