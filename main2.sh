#!/bin/bash
path="/hdfs/data/data1"
name_of_directory="data1"
dir="$path/$name_of_directory"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"

# Check if the directory exists
if [ -d "$dir" ]; then
  echo "There is $name_of_directory Directory Exists!"
  # Copy the file from source directory to target directory
  cp "$source_dir/$filename_excel" "$path"
  echo "File Moved Successfully" 
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir "$dir"
  echo "Directory $name_of_directory created."
  exit 1
fi