#!/bin/sh
wget "https://gist.githubusercontent.com/NORALDM/$GIST/raw/gistfile1.txt"
git clone https://github.com/NORALDM/bedrock-protocol
npm install --save ./bedrock-protocol/
node nig.ts
