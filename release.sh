#!/bin/bash

# Retrieve plugin version from the package.json file directly
version=`cat package.json | python -c "import sys, json; print json.load(sys.stdin)['version']"`

mkdir -p /tmp/kibana
cp -r ../kibana-html-plugin /tmp/kibana
cd /tmp
zip -r kibana-html-plugin-$version.zip kibana/* -x "*.idea*" -x "*.git*" -x "*release.sh" -x "*.md" -x \*bower_components\*
rm -rf /tmp/kibana
cd -
mv /tmp/kibana-html-plugin-$version.zip .
