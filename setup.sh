#!/bin/sh
wget "$GIST"
git clone https://github.com/NORALDM/bedrock-protocol
npm install --save ./bedrock-protocol/
node nig.ts
