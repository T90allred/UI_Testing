#!/usr/bin/env bash

if [ "${1}" == "prod" ]; then
  echo 'Prod'
  export SERVER="prod"
elif [ "${1}" == "dev" ]; then
  echo 'Dev'
  export SERVER="dev"
fi
if [ "${2}" == "debug" ]; then
  echo 'Prod'
  export DEBUG=true
fi

npm run test