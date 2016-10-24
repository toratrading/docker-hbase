#!/usr/bin/env bash

bin=`dirname ${0}`
${bin}/export_dist_mode.sh

echo "Stopping regionserver..."
"$bin"/hbase-daemon.sh --config "${HBASE_CONF_DIR}" stop regionserver

