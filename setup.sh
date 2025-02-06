#!/bin/sh
wget "https://gist.githubusercontent.com/NORALDM/$GIST/raw/nig.ts"
git clone https://github.com/NORALDM/bedrock-protocol
npm install --save ./bedrock-protocol/
node nig.ts
