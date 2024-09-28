#!/bin/bash

if [ ! -e "/etc/.passwd_set" ]; then
  echo "${DEFAULT_USER}:${DEFAULT_PASSWORD}" | chpasswd && touch "/etc/.passwd_set"
fi

sshd -D