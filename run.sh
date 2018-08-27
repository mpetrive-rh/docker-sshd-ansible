#!/bin/bash

if [ "${AUTHORIZED_KEYS}" != "nil" ]; then
  mkdir -p /home/user/.ssh
  chmod 700 /home/user/.ssh
  touch /home/user/.ssh/authorized_keys
  chmod 600 /home/user/.ssh/authorized_keys
  echo ${AUTHORIZED_KEYS} > /home/user/.ssh/authorized_keys
  chown -R user /home/user/.ssh
fi

exec /usr/sbin/init
