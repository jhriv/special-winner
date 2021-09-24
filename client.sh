#!/bin/sh

exec ansible-playbook main.yml --limit=pgsql-client
