#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/hbbs.pid
cd $HOME/bin
exec ./hbbs --port {{rendezvous_port}} --relay-servers {{domain}}  >$HOME/var/log/hbbs.log 2>&1 &
echo $! > $PID
