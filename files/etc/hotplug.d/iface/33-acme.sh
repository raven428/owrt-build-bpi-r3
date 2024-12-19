#!/usr/bin/env bash
[[ "${ACTION}" == "ifup" && "${DEVICE}" == "br-wan" ]] || exit 0
/etc/init.d/acme start 2>&1 |
  /usr/bin/env logger -t "acme-startup"
