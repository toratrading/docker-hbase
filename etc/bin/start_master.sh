#!/usr/bin/env bash

bin=`dirname ${0}`
${bin}/export_dist_mode.sh

function stop_all {
	"$bin"/stop_master.sh
	exit 0
}

trap stop_all HUP INT TERM EXIT SIGHUP SIGINT SIGTERM
echo "Starting master..."

commandToRun=${commandToRun:-"foreground_start"}
"$bin"/hbase-daemon.sh --config "${HBASE_CONF_DIR}" $commandToRun master
