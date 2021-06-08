#!/bin/bash

source_package=../doors-client
source_app=../doors-client/.build/x86_64-apple-macosx/debug/DoorsClient
destination=/usr/local/bin/doors-client
uninstall=../uninstaller/uninstall.sh
install=$(realpath $0)
installer=$(dirname $install)

# 1. Check installation: Try to uninstall
./$uninstall

# 2. Build
cd $source_package
swift build
cd $installer

# 3. Install
cp $source_app $destination
echo "Installation completed"
