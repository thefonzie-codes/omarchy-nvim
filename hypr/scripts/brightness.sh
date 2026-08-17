#!/bin/bash
# brightness up/down script using ddcutil
STEP=10
case "$1" in
  up)   ddcutil setvcp 10 +$STEP ;;
  down) ddcutil setvcp 10 -$STEP ;;
  get)  ddcutil getvcp 10 ;;
  *)    echo "Usage: $0 {up|down|get}" ;;
esac
