#!/usr/bin/env bash

bin=`dirname ${0}`
${bin}/export_dist_mode.sh

echo "Stopping hbase daemons..."
# stop all hbase daemons (master and regionserver)
"$bin"/stop-hbase.sh

