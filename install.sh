#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT_DIR=$PWD
echo "CURRENT_DIR : $CURRENT"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "SCRIPT_DIR : $SCRIPT_DIR"

# cd $TMPDIR

for script in $SCRIPT_DIR/scripts/*.sh; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR