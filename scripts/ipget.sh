#!/bin/sh

parameter="$1"

# case "$parameter" in
#   "lan"|"gateway"|"")
#   ;;
#   *) echo "Error: Invalid argument"
#   ;;
# esac

if [ "$parameter" == "lan" ]; then
  ip -json route get 8.8.8.8 | jq -r '.[].prefsrc';
  exit 0
fi

if [ "$parameter" == "gateway" ]; then
  ip -json route get 8.8.8.8 | jq -r '.[].gateway';
  exit 0
fi

if [ "$parameter" == "" ]; then
  ip -json route get 8.8.8.8;
  exit 0
fi

if [ "$parameter" == "help" ]; then
  echo -e "ipget is a script to get ip info quickly\n \nUsage: ipget [ PARAMETER ]\n       where PARAMETER:={ help | lan | gateway | }"
  exit 0
fi

echo -e "Error: Invalid parameter\ntry: ipget help"
exit 1
