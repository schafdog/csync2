#!/usr/bin/env bash
mysql --protocol=TCP -h 127.0.0.1 -u root -pcsync238 -e "CREATE DATABASE IF NOT EXISTS csync2_local;"
mysql --protocol=TCP -h 127.0.0.1 -u root -pcsync238 -e "CREATE DATABASE IF NOT EXISTS csync2_peer;"
mysql --protocol=TCP -h 127.0.0.1 -u root -pcsync238 -e "GRANT ALL PRIVILEGES ON csync2_local.* TO 'csync2_local'@'%' identified by 'csync2_local'; " || true
mysql --protocol=TCP -h 127.0.0.1 -u root -pcsync238 -e "GRANT ALL PRIVILEGES ON csync2_peer.* TO 'csync2_peer'@'%' identified by 'csync2_peer';" || true
