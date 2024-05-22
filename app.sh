#!/bin/bash

echo "Quality assesment tool"
read -p "What is your SRA ID? " id

pattern="^SRR[0-9]+$"

if [[ $id =~ $pattern ]]; then
  echo "Given SRA ID is valid."
else
  echo "ERROR: Invalid SRA ID. Please enter an ID that starts with 'SRR' followed by digits."
  exit 1
fi

SRA_ID=$id docker compose up