#!/usr/bin/env bash

# check if we are in hash_demo folder
if [ ! -d "mime_type_counter" ]; then
  echo "Please run this script in root folder"
  exit 1
fi

# Go to counter folder
cd mime_type_counter

# Build flutter web app in release mode with canvas kit in counter folder
flutter build web --web-renderer canvaskit --release

# Go to root folder
cd ..

# Remove public folder if exists
if [ -d "public" ]; then
  rm -rf public
fi

# copy the mime_type_counter/build/web folder to public folder
cp -r mime_type_counter/build/web/ public/
