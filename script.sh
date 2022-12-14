#!/bin/bash

cd /test
pwd 
echo ""
ls -al
echo ""
ls -la | grep Chart.yaml;
RESULT=$?

if [ $RESULT = 0 ]; then
  echo "Run the helm command" 
else 
  echo "We unable to find the files. Switching directory to another folder (helm)" 
  cd helm
  pwd
  echo ""
  ls -al
  echo ""
  ls -la | grep Chart.yaml;
  RESULT=$?
    if [ $RESULT = 0 ]; then
      echo "Finally we foudn the files in (helm) folder. Run the helm command"
    else
      echo "oh no. There's something wrong and we unable to find the desired files in this location as well. Lets work to fix this :)"
  fi
fi
