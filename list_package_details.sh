#!/bin/bash

# Get a list of installed packages
packages=$(dpkg -l | awk '{print $2}')

# For each package, print its details
for package in $packages; do
  echo "Details for package: $package"
  apt-cache show $package | grep -E 'Package:|Version:|Maintainer:|Architecture:|Description:|Description-en:|Homepage:'
  echo "----------------------------------------"
done
