#!/bin/sh

exec ansible-playbook legacy.yml -l pgsql-server
