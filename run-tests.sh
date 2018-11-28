#!/usr/bin/env bash

On_IGreen="\033[0;102m"
On_IRed="\033[0;101m"
NC='\033[0m' # No color

if [ "${1}" != "local" ] && [ "${1}" != "live" ]; then
    printf "\n\n${On_IRed}ERROR: Need to specify context (local or live) for running tests${NC}\n"
    printf "${On_IGreen}Ex: ./run-tests.sh local${NC}\n\n"
    exit 1
fi

if [ "${1}" == "live" ]; then
  export DRIVER_COUNT=6 
  echo $1
  export TEST_ENVIRONMENT="live"
elif [ "${1}" == "local" ]; then
  export DRIVER_COUNT=1 
  echo $1
  export TEST_ENVIRONMENT="local"
fi


npm run test-all