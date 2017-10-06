#!/bin/sh

# Running Install Scripts
SCRIPTS=$(find /config/config-* -type f)

for SCRIPT in ${SCRIPTS}; do
  echo
  echo
  echo "Updating repositories"
  sudo apt-get update
  echo
  echo "--------------------------------------------"
  SCRIPT_NAME=$(basename ${SCRIPT})
  echo "Running ... ${SCRIPT_NAME}"

  sudo "${SCRIPT}"

  echo "Finished ... ${SCRIPT_NAME}"
  echo "--------------------------------------------"
done