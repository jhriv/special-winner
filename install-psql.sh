#!/bin/sh

sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install -y postgresql12-server
echo sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
echo sudo systemctl enable postgresql-12
echo sudo systemctl start postgresql-12
