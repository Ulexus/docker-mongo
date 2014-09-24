mongo
=====

MongoDB (v2.6.4) dockerfile

For the simplest case, a standalone MongoDB server, you should only need to run the docker image.  It will automatically create a `VOLUME` in which to store the database.

You may, alternatively, bind-mount your own volume to `/data` or specify the database path to use with the environment variable `DBPATH`.

For anything more complicated, including shard, configuration, and webstatus servers, pass the full commandlines through as the docker command.

