#!/bin/bash

INPUT_FILE=${1:-access_log}

#Get all occurences of an IP v4
find_all_ipv4(){
  cat $1 |grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
}

find_all_ipv4 ${INPUT_FILE}
