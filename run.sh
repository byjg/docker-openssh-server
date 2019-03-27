#!/usr/bin/env bash

if [[ -z "$SSH_PUBLIC_KEY" ]]
then
    echo "You have to define the 'SSH_PUBLIC_KEY' env var"
    exit 1
fi

HOME_SSH=/root/.ssh

mkdir -p "$HOME_SSH"

i=""
VAR="SSH_PUBLIC_KEY$i"
while [[ ! -z `eval 'echo $'"${VAR}"` ]]
do
    echo `eval 'echo $'"${VAR}"` >> ${HOME_SSH}/authorized_keys
    i=$((i+1))
    VAR="SSH_PUBLIC_KEY$i"
done

chmod 400 ${HOME_SSH}/authorized_keys

/usr/bin/ssh-keygen -A
/usr/sbin/sshd -D -E /proc/1/fd/1

