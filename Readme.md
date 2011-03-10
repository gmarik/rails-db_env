
About
-------------
A `Rails` development utility to help you quickly switch between configured databases.

Why and How
-------------

Sometimes you may want to run your local copy of app against `staging` DB:

    rails2app$ DB_ENV=staging ./script/server

starts a server with default `RAILS_ENV`(`development`) and database configured against `staging:` configuration in `database.yml`


TODO
-------------

- support rails3
- tests

Also
-------------
make sure you know what you're doing: running development migration on production database might not be a good idea! 
Use it on our own risc!



