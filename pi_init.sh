#!/bin/bash

# add temp measure shell cmd
if [ -e /usr/local/bin/temp ];then
  echo "cmd temp exist."
else
  echo "/opt/vc/bin/vcgencmd measure_temp" | sudo tee /usr/local/bin/temp >> /dev/null
fi





