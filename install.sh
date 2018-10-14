#!/usr/bin/env bash
#
# install.sh
#
# Installs git alias "yolo".

if [[ "$EUID" -eq 0 ]]; then
  flag="system"
else
  >&2 echo 'Please yolo harder!'
  flag="global"
fi

echo "Setting up git $flag alias: yolo"
cmd='git add -A && git commit -am "`curl -s http://whatthecommit.com/index.txt `" && git push -f origin master'
git config --$flag alias.yolo \!"$cmd"
