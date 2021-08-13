# Postgres + SSL

JIRA: https://jira.library.ucla.edu/browse/LX-853

Support encrypted communication from postgres client to postgres server

Requires a certificate on the server end. Self-signed would work, ideally it
would be from certbot/Sectigo


## Steps

1. `make up etc-hosts main`
