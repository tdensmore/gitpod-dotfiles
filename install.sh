#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD
echo "Current DIR : $CURRENT"
# cd $TMPDIR

for script in $CURRENT/scripts/*.sh; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR