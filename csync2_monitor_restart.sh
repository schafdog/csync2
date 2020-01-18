#!/bin/bash
kill `ps -ef|grep csync2 |grep -v grep |grep -v bash| cut -b 8-14`
