#!/usr/bin/env bash

if [ "${1}" == "prod" ]; then
  echo 'Prod'
  export SERVER="prod"
elif [ "${1}" == "dev" ]; then
  echo 'Dev'
  export SERVER="dev"
fi

npm test