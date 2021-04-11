#!/bin/bash

set -exv

mkdir -p $HOME/.crda

export AUTH_TOKEN=${THREE_SCALE_KEY};
export CRDA_KEY=${CRDA_KEY};
export HOST=https://f8a-analytics-preview-2445582058137.staging.gw.apicast.io

pushd $HOME/.crda

printf 'auth_token: %s\ncrda_key: %s\nhost: %s' "${AUTH_TOKEN}" "${CRDA_KEY}" "${HOST}" >> config.yaml

popd 

cat $HOME/.crda/config.yaml

curl https://github.com/fabric8-analytics/cli-tools/releases/download/v0.1.1/crda_0.1.1_Windows_64bit.tar.gz -o crda.tar.gz
tar -xvf crda.tar.gz

cd crda 
./crda 
