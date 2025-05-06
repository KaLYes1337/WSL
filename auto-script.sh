#!/bin/bash

#r-dir=https://github.com/KaLYes1337/WSL

cd /home/kalyes/github || exit

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
