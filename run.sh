#!/bin/bash

set -exv

mkdir -p $HOME/.crda

export AUTH_TOKEN=${THREE_SCALE_KEY};
export CRDA_KEY=${CRDA_KEY};
export HOST=https://f8a-analytics-preview-2445582058137.staging.gw.apicast.io

pushd $HOME/.crda

printf "auth_token: $(AUTH_TOKEN)\ncrda_key: $(CRDA_KEY)\n host: $(HOST)" >> config.yaml

popd 

cat $HOME/.crda/config.yaml
