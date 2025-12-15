#!/usr/bin/env bash

set -e

if [ -z "$(git diff -- README.md)" ];then
  echo "No Update to the readme found"
else
  git config user.name "Actions bro"
  git config user.email "github-actions@users.noreply.github.com"

  git add README.md
  git commit -m "AUTO_GEN: Readme update"
  echo "push will occur"
  git push origin
fi
