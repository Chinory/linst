#!/bin/bash
BACKUP=$(dirname $(readlink -f "$0"))
for list in *.files; do
  name=${list:0:-6}
  echo -e "\033[32m$name:\033[0m"
  mkdir -p "$name"
  rsync -arSzvh --delete --files-from="$BACKUP/$list" $name:/ "$BACKUP/$name/"
  echo
done
