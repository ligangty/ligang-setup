#!/bin/sh

BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for i in `cat $BASE/extensions.txt`
do 
  code --install-extension $i
done