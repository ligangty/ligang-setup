#!/bin/bash

for i in `cat ./extensions.txt`
do 
  code --install-extension $i
done