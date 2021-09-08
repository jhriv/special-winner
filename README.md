# Postgres + SSL

JIRA: https://jira.library.ucla.edu/browse/LX-853

Support encrypted communication from postgres client to postgres server

Requires a certificate on the server end. Self-signed would work, ideally it
would be from certbot/Sectigo


## Steps

1. `make up etc-hosts main`


## Notes

The postgresql role should not care how a cert is generated (Conodo / Digicert
/ Let's Encrypt/ Snakeoil / etc), only where it is. The role is subsequently
responsible for moving the cert into place.

For Let's Encrypt, the role could be responsible for setting up a hook to move
the cert into place upon renewal.

The role should not move the cert into place. The cert managing system should handle the cert and its updates.

## TODO

* create replciated pair
* add ssl to primary
* does backup now support ssl?
* certs in the data dir get copied
* certs outside do not
* test client cert checking strictness
* is non-ssl fallback a possibility



## References

* https://certbot.eff.org/lets-encrypt/centosrhel7-other
* https://pavelevstigneev.medium.com/postgresql-ssl-with-letsencrypt-b53051eacc22
