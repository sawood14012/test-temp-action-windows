mkdir -p $HOME/.crda

auth_token = $1  #3e42fa66f65124e6b1266a23431e3d08
crda_key= $2  #d931dd95-ab1f-4f74-9a9f-fb50f60e4ea9
host = https://f8a-analytics-preview-2445582058137.staging.gw.apicast.io

pushd $HOME/.crda

printf "auth_token: $(auth_token)\ncrda_key: $(crda_key)\n host: $(host)" >> config.yaml

popd 

cat $HOME/.crda/config.yaml
