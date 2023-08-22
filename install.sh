#!/bin/bash
set -e
export NVM_DIR="$HOME/mynvm"
export NVM_NODEJS_ORG_MIRROR="$2"

if [ ! -d "$HOME/mynvm" ]; then
git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
pushd  "$NVM_DIR"
popd
fi
chmod +x "$NVM_DIR/nvm.sh"
source "$NVM_DIR/nvm.sh"
nvm install "$1"
echo "SETUP_NODE_NVM_NVM: $NVM_DIR/nvm.sh"
echo "SETUP_NODE_NVM_NODE: $(which node)"
echo "SETUP_NODE_NVM_NPM: $(which npm)"
