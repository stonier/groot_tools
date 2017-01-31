#!/bin/bash

# Script for setting up the development environment.

if [ "${VIRTUAL_ENV}" == "" ]; then
  workon groot_tools
  if [ $? -ne 0 ]; then
    mkvirtualenv groot_tools
    if [ $? -ne 0 ]; then
    	sudo apt-get install virtualenvwrapper
        mkvirtualenv groot_tools
    fi
  fi
fi
# Always pulling for now
python setup.py develop

echo ""
echo "Leave the virtual environment with 'deactivate'"
echo ""
echo "I'm grooty, you should be too."
echo ""

