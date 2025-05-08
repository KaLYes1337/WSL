#!/bin/bash

# Error handling: exit on error and log the error
set -eE
exec 2> >(while IFS= read -r line; do echo "$(date '+%m-%d %H:%M') - $line"; done >> output.log)
trap 'echo "Problem: check output.log file!" >&2; exit 1' ERR

# Navigate to the project directory
cd /home/kalyes/github

# Stage all changes
git add .

#Check git status
git status

# Check if anything is actually staged for commit
if git diff --cached --quiet; then
  echo "Nothing staged to commit."
  exit 0
fi

# Ask for commit message
read -p "Enter commit message: " comm_msg < /dev/tty

# Commit the changes
git commit -m "$comm_msg"

# Confirm pushing the commit
read -p "Do you want to continue and push the commit? (y/n): " choice
if [[ "$choice" == "y" ]]; then
  git push -u origin main
  echo "Changes pushed to Github"
else
  echo "Changes stopped"
  sleep 2
  exit
fi
