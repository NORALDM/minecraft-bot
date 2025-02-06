#!/bin/sh
echo 1 >> track
git add track
git commit -m "$(wc -l track|awk '{print $1}')"
git push
