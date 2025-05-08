#!/bin/bash


#Error handling
set -eE
exec 2> >(while IFS= read -r line; do echo "$(date '+%m-%d %H:%M') - $line"; done >> output.log)

trap 'echo "Problem: check output.log file!"; exit 1' ERR

#Path of the directory we want to push to GitHub
cd /home/kalyes/github

#Pushing the changes
git add .
read -p  "Commit message: " comm_msg

git commit -m "$comm_msg"
read -p "Do you want to continue and push the commit? (y/n):" choice
if [[ "$choice" == "y" ]];then
  git push -u origin main
  echo "Changes pushed to Github"
else
  echo "Changes stopped"
  sleep 2
  exit
fi
