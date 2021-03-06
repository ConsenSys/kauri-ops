#!/bin/sh

# Set the location to deploy to - run the following to see list of available locations: $ az account list-locations
if [ "${TARGET_ENV}" == "" ]; then
  echo "Environment not set, please run env_setup script in ops folder"
  exit 1
fi

helm install --name nginx-${TARGET_ENV} -f values-${TARGET_ENV}.yaml stable/nginx-ingress
