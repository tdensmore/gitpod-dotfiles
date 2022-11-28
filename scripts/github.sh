#!/bin/bash

THIS_DIR="$(dirname "$0")"
source $THIS_DIR/VARS

THIS_SCRIPT="$GREEN${0##*/}$DEFAULT"
echo -e "$THIS_SCRIPT"

THIS_TASK="$YELLOW->$DEFAULT"

echo -e "$THIS_TASK setting GITPOD_GIT_USER_EMAIL"
export GITPOD_GIT_USER_EMAIL="469399+tdensmore@users.noreply.github.com"
echo -e "$THIS_TASK setting user.email"
# git config user.email "469399+tdensmore@users.noreply.github.com"
