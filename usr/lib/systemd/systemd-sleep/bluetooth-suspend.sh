#!/bin/sh

RESUME_FILE=/tmp/enable-bluetooth-on-resume

if test "${1}" = "pre"; then
  systemctl is-enabled bluetooth && touch ${RESUME_FILE}
  systemctl disable bluetooth
  systemctl stop bluetooth
elif test "${1}" = "post"; then
  test -e ${RESUME_FILE} \
    && (systemctl enable bluetooth && sleep 3 && systemctl start bluetooth; rm ${RESUME_FILE})
fi
