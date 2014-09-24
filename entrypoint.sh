#!/bin/bash
set -e

# Default values
: ${DBPATH:="/data"}

if [ ! -e $REPLSET ]; then
   REPLSET="--replSet ${REPLSET}"
fi

if [ $1 == "mongod" ]; then
   shift
   exec mongod --dbpath $DBPATH --journal $REPLSET $@
else
   exec $@
fi
