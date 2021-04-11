#!/bin/bash

set -exv

mkdir -p $HOME/.crda

export AUTH_TOKEN=${THREE_SCALE_KEY};
export CRDA_KEY=${CRDA_KEY};
export HOST=https://f8a-analytics-preview-2445582058137.staging.gw.apicast.io

printf 'auth_token: %s\ncrda_key: %s\nhost: %s' "${AUTH_TOKEN}" "${CRDA_KEY}" "${HOST}" >> $HOME/.crda/config.yaml

cat $HOME/.crda/config.yaml

ls -l
