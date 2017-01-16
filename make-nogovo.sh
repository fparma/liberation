#!/usr/bin/env bash

# Settings
MAKE_PBO=0
RENAME_MISSION_FILE=1

# Variables
SRC_CUSTOM="dist/nogova_liberation.noe"
DST_MAIN="dist/nogova_liberation.noe"

###############################################################
echo "Building Nogovo Liberation Now..."

# Build/Rebuild Dist Dir
if [ -d dist ]; then
  echo "Dist mission directory found. Deleting old version..."
  rm -rf dist
fi
mkdir dist

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
if [ $RENAME_MISSION_FILE -eq 1 ]; then
  DATE=`date +%Y%m%d-%H%M`
  MAP_BEGIN=`echo "$DST_MAIN" | grep -E -o "^dist/[a-z0-9_-]+"`
  MAP_ENDING=`echo "$DST_MAIN" | grep -E -o "\.[a-z0-9]+$"`
  mv "${DST_MAIN}" "${MAP_BEGIN}_${DATE}${MAP_ENDING}"
fi

if [ $MAKE_PBO -eq 1 ]; then
  echo "Building PBO File."
fi