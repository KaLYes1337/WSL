#!/bin/bash

cd /home/kalyes/github || exit

git add --all

git commit -m "Auto push the changes"

git push -u origin main
echo "Changes pushed to GitHub."
sleep 2
exit
