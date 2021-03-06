#! /bin/bash
mkdir dist
echo "===================================================================================="
echo "BUILDING genome with 'hc package --output dist/app_spec.hcpkg --strip-meta':"
echo "------------------------------------------------------------------------------------"
hc package --output dist/app_spec.hcpkg --strip-meta
echo "DONE."
echo "===================================================================================="
echo "Running test.js in node"
echo "------------------------------------------------------------------------------------"
cd test
npm install
cd ..
node test/test.js | test/node_modules/faucet/bin/cmd.js
