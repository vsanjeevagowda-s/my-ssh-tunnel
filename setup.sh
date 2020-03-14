#!/bin/bash

BASEDIR=$(dirname "$0")
CURRENT_WORKING_DIR=`pwd`
BASHRC_FILE_PATH=$HOME/.bashrc
# BASHRC_FILE_PATH=a.txt

printf " \nRunning in BASEDIR : $BASEDIR\n"
printf "\CURRENT_WORKING_DIR path: $CURRENT_WORKING_DIR\n"
printf "\nHome path: $HOME\n"

REPLACE_TEXT="export PATH=$CURRENT_WORKING_DIR/bin:\$PATH"

echo "$REPLACE_TEXT"

printf "\n[ `date` ] [ RUNNING ] updating $HOME/.bashrc \n"

if grep -q my-ssh-tunnel "$BASHRC_FILE_PATH"; 
then
  sed -i "/my-ssh-tunnel/c $REPLACE_TEXT" "$BASHRC_FILE_PATH"
else
  echo $REPLACE_TEXT >> $BASHRC_FILE_PATH
fi



