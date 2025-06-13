-- 
-- csync2 PostgreSQL Schema Creation Script
-- Based on the schema from src/db_postgres.c
--

-- Create action table
CREATE TABLE action (
  filename varchar(275),
  command varchar(1000),
  logfile varchar(1000),
  UNIQUE (filename,command)
);

-- Create host table  
CREATE TABLE host (
  host varchar(50),
  status integer, 
  UNIQUE (host)
);

-- Create dirty table
CREATE TABLE dirty (
  filename  varchar(275),
  forced    int,
  myname    varchar(50),
  peername  varchar(50),
  checktxt  varchar(255),
  digest    varchar(130),
  device    bigint,
  inode     bigint,
  operation varchar(100),
  op        int,
  other     varchar(275),
  mode      int,
  mtime     int,
  type      int,
  file_id   bigint,
  timestamp timestamp DEFAULT current_timestamp,
  UNIQUE (filename,peername,myname)
);

-- Create index for dirty table
CREATE INDEX idx_dirty_device_inode on dirty (device, inode);

-- Create file table
CREATE TABLE file (
  parent bigint,
  filename varchar(275),
  basename varchar(275),
  hostname varchar(50),
  checktxt varchar(325),
  device bigint,
  inode  bigint,
  size   bigint,
  mode   int,
  mtime  int,
  type   int,
  digest varchar(130),
  timestamp timestamp DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (filename,hostname)
);

-- Create index for file table
CREATE INDEX idx_file_device_inode ON file (device, inode);

-- Create hint table
CREATE TABLE hint (
  filename varchar(275),
  recursive int
);

-- Create x509_cert table
CREATE TABLE x509_cert (
  peername varchar(50),
  certdata text,
  UNIQUE (peername)
);

-- Grant permissions to csync2 user
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO csync2;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO csync2;
