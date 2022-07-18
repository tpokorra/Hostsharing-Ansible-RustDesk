#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/hbbr.pid
cd $HOME/bin
exec ./hbbr -p {{relay_port}} >$HOME/var/log/hbbr.log 2>&1 &
echo $! > $PID
