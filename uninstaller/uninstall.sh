#!/bin/bash

destination=/usr/local/bin/doors-client
work_dir=/Users/Shared/doors/work

# 1. Uninstallation
if [ -f "$destination" ]; then
  rm -rf $destination
  echo "Uninstallation completed"
else
  echo "Installation not found"
fi

removeWorkDir() {
  rm -rf $work_dir
}
