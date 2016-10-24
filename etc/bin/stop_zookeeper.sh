#!/usr/bin/env bash

bin=`dirname ${0}`
${bin}/export_dist_mode.sh

echo "Stopping zookeeper..."
"$bin"/hbase-daemon.sh --config "${HBASE_CONF_DIR}" stop zookeeper

