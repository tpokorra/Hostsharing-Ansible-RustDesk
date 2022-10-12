#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/hbbs.pid
cd $HOME/bin

key=""
if [ -f id_ed25519 ]; then
    value=`cat id_ed25519`
    key="--key $value"
fi

export ENCRYPTED_ONLY=1
export RELAY={{relay_ip}}:{{relay_port}}
exec ./hbbs --port {{rendezvous_port}} $key  >$HOME/var/log/hbbs.log 2>&1 &  # --relay-servers {{domain}}
echo $! > $PID
