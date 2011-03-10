
About
-------------
A `rails` development utility to help you quickly switch between configured databases.

Why and How
-------------

Sometimes you may want to run your local copy of app against `staging` DB:

    rails2app$ DB_ENV=staging ./script/server

starts a server with default `RAILS_ENV`(`development`) and database configured against `staging:` configuration in `database.yml`


TODO
-------------

- make it work as it dosn't!
- rails3
- tests




