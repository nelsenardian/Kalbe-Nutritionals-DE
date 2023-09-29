#!/bin/bash
path="/hdfs/data/data1"
name_of_directory="data1"
dir="$path/$name_of_directory"

# Check if the directory exists
if [ -d "$dir" ]; then
  echo "There is $name_of_directory Directory Exists!"
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir "$dir"
  echo "Directory $name_of_directory created."
  exit 1
fi








# Crontab entry to run this script at 07:00 AM daily
# 0 7 * * * root main1.sh
