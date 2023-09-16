#!/bin/bash

if ping -c 1 gnu.org &> /dev/null ; then
  echo "network is up"
else
  echo "network seems down, pinging dns"
  if pring -c 1 8.8.8.8 &> /dev/null ; then
    echo "Ping to 8.8.8.8 works, possible DNS failure"
  else
    echo "Ping to 8.8.8.8 also failed, issue log at $HOME/.log/nwfail.log"
    mkdir -p $HOME/.log ; ip addr > $HOME/.log/nwfail.log
  fi
fi
