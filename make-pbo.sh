#!/usr/bin/env bash

# Settings
MAKE_PBO=1                # Build a PBO if true. (Requires mikeros PBO tools)
LINT_MISSION=0            # Lint the Mission Folder
RENAME_MISSION_FILE=1     # Adds timestamp to the mission folder/pbo file
RENAME_MISSION_TITLE=1    # Replaces <#DATETIME> with timestamp in mission name
DATE=`date +%Y%m%d-%H%M`  # Timestamp call & Format specification

# Check for --pbo Arg
if [[ "$@" = "--pbo" ]]; then
  MAKE_PBO=1
fi

###############################################################
echo "Building Liberation missions Now..."

# Build/Rebuild Dist Dir
if [ -d dist ]; then
  echo "Dist mission directory found. Deleting old version..."
  rm -rf dist
fi
mkdir dist

for mission in `find src/ -maxdepth 1 -name "fp_*" -type d`; do
  DST_MAIN=${mission/src/dist}
  echo "Processing: $mission"
  # Copy Base Files into dist folder
  cp -r 'src/greuh_liberation.Default' $DST_MAIN

  # Copy customized files into dist folder
  cp -r ${mission}/* "${DST_MAIN}/"

  # Begin Pre-Processing of certain custom files
  
  for arsenal in `find ${DST_MAIN}/factions/ -maxdepth 2 -name "arsenal*" -type f`; do
    cat "${arsenal}" | gpp -x -H --nostdinc --nocurinc -I${DST_MAIN}/meta -o "${arsenal}"
  done
  for classname in `find ${DST_MAIN}/factions/ -maxdepth 2 -name "classname*" -type f`; do
    cat "${classname}" | gpp -x -H --nostdinc --nocurinc -I${DST_MAIN}/meta -o "${classname}"
  done

  # Edit the mission Title if defined.
  # While developing the mission, you don't want the mission title to be processed or else the <#DATETIME> May get lost.
  # But you want to have it enabled for release builds, in order to have the timestamp in the mission name.
  if [ $RENAME_MISSION_TITLE -eq 1 ]; then
    echo "Editing Mission title to include timestamp"
    cat "${DST_MAIN}/mission.sqm" | gpp -H --nostdinc --nocurinc -I${DST_MAIN}/meta -o "${DST_MAIN}/mission.sqm" -DDATETIME=${DATE}
  fi

  ###############################################################

  # Delete meta folder (For Include Files) from the mission when done processing.
  if [ -d "${DST_MAIN}/meta" ]; then
    echo "Removing Meta Folder from Mission"
    rm -rf "${DST_MAIN}/meta"
  fi

  if [ $LINT_MISSION -eq 1 ]; then
    makepbo -PQ "${DST_MAIN}"
  fi

  # Finish up by renaming the folder with a timestamp
  if [ $RENAME_MISSION_FILE -eq 1 ]; then
    MAP_BEGIN=`echo "$DST_MAIN" | grep -E -o "^dist/[a-zA-Z0-9_-]+"`
    MAP_ENDIN=`echo "$DST_MAIN" | grep -E -o "\.[a-zA-Z0-9_]+$"`
    mv "${DST_MAIN}" "${MAP_BEGIN}_${DATE}${MAP_ENDIN}"
  fi

  if [ $MAKE_PBO -eq 1 ]; then
    echo "Building PBO File."
    makepbo -P -N "${MAP_BEGIN}_${DATE}${MAP_ENDIN}"
  fi
done