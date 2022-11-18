#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

# cd $TMPDIR

for script in $CURRENT/scripts/*.sh; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR