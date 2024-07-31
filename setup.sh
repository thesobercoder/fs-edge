#!/bin/bash

# Define color codes
GREEN="\033[32m"
RED="\033[31m"
RESET="\033[0m"

# Define volume name
VOLUME_NAME="FS EDGE RGB"

if mount | grep -q "/Volumes/$VOLUME_NAME"; then
  echo -e "${GREEN}$VOLUME_NAME is mounted${RESET}"
else
  echo -e "${RED}$VOLUME_NAME is not mounted${RESET}"
  exit 1
fi

# Copy the layout files
echo -e "${GREEN}Copying the layout files...${RESET}"
cp -f ./layouts/* /Volumes/FS\ EDGE\ RGB/layouts

# Copy the lighting files
echo -e "${GREEN}Copying the lighting files...${RESET}"
cp -f ./lighting/* /Volumes/FS\ EDGE\ RGB/lighting
