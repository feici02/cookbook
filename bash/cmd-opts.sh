#!/bin/bash

while getopts "\?hc:f:" opt; do
  case "$opt" in
     c) CVAL="$OPTARG"
        echo "-c: ${CVAL}"
        ;;  

     f) FVAL="$OPTARG"
        echo "-f: ${FVAL}"
        ;;  
     \?|h)
        echo "Print Usage"
        ;;
  esac
done

