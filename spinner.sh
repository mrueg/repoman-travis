#!/bin/bash
# Small spinner script, that returns exit code of CMD and keeps colored output
# Usage: ./spinner CMD

set -eo pipefail

spinner() {
	local PID=$1
	local SPIN="/-\|"
	local i=0
	while kill -0 "$PID" >/dev/null 2>&1; do
		printf "\r%s" "${SPIN:$i:1}"
		i=$((i+1))
		[[ $i -eq 4 ]] && i=0
		sleep 0.5;
	done
}

cat /tmp/update 2>/dev/null
$(script -q -e /dev/null -c "$*" >/tmp/output 2>&1) &
PID=$!
spinner "${PID}" &
wait ${PID}
RC=$?
sleep 0.75
printf "\r"
cat /tmp/output
exit $RC
