#!/usr/bin/env bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install `cat .nvmrc`
nvm use `cat .nvmrc`
npm install
cp node_modules/d3/dist/d3.js ../../public
cp node_modules/c3/c3.js ../../public
cp node_modules/c3/c3.css ../../public
