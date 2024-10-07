#!/bin/bash

# Find the process ID (PID) of the infinite.sh script using pgrep
pid=$(pgrep -f 'bash .*infinite.sh')

# Check if the process was found
if [ -n "$pid" ]; then
    # Kill the process
    kill $pid
    echo "Process $pid (infinite.sh) has been killed."
else
    echo "No infinite.sh process found."
fi