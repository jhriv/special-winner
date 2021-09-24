#!/bin/sh

exec ansible-playbook legacy.yml -l pgsql-backup -e pgsql_backup_reset=true
