#!/bin/sh
echo 1 >> track
git add track
git commit -m "$(wc -l track|awk '{print $1}')"
git push
url=$({curl -sf https://gist.githubusercontent.com/NORALDM/f0fd68f8d3f658a3911eabf47b23a9d0/raw/log.txt > tmp.log && awk '{print $NF}' tmp.log || cat /dev/null }; rm tmp.log )
if [ -z $url ]; then return 1; fi
while [ $url  = $(cat last-auth) ]; do
	sleep 1;
done
mv last-auth.1 last-auth
termux-open-url "$(cat last-auth)"
