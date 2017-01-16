#!/usr/bin/env bash

SRC_CUSTOM="dist/nogova_liberation.noe"
DST_MAIN="dist/nogova_liberation.noe"
DATE=`date +%Y%m%d-%H%M`
MAP_BEGIN=`echo "$DST_MAIN" | grep -E -o "^dist/[a-z0-9_-]+"`
MAP_ENDING=`echo "$DST_MAIN" | grep -E -o "\.[a-z0-9]+$"`

echo "Building Nogovo Liberation"

if [ -d dist ]; then
  echo "Dist mission directory found. Deleting old version..."
  rm -rf dist
fi
if [ ! -d dist ]; then
  echo "Dist directory not found, creating..."
  mkdir dist
fi

# Copy Base Files into dist folder
cp -r 'src/greuh_liberation.Default' $DST_MAIN

# Copy customized files into dist folder
cp -r src/nogova_liberation.noe/* "${SRC_CUSTOM}/"

# Begin Pre-Processing of certain custom files
cat "${DST_MAIN}/arsenal.sqf" | gpp -H --nostdinc --nocurinc -I${DST_MAIN}/meta -o "${DST_MAIN}/arsenal.sqf"

# Delete meta folder (For Include Files) from the mission when done processing.
if [ -d "${DST_MAIN}/meta" ]; then
  echo "Removing Meta Folder from Mission"
  rm -rf "${DST_MAIN}/meta"
fi

# Finish up by renaming the folder with a timestamp
mv "${DST_MAIN}" "${MAP_BEGIN}_${DATE}${MAP_ENDING}"

