#!/usr/bin/env bash

set -e

if [ -z "$(git diff -- README.md)" ];then
  echo "No Update to the readme found"
else
  git config --global user.name "github-actions[bot]"
  git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"

  git add README.md
  git commit -m "AUTO_GEN: Readme update"
  echo "push will occur"
  git push origin
fi
