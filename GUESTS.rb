# -*- mode: ruby -*-
# vi: set ft=ruby :

GUESTS = [
  { name: 'pgsql-server', box: 'centos/7', ip: 'dhcp', },
  { name: 'pgsql-client', box: 'centos/7', ip: 'dhcp', },
  { name: 'pgsql-backup', box: 'centos/7', ip: 'dhcp', },
]
