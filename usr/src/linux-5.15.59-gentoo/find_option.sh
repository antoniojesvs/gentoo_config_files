#!/bin/bash
echo "driver $1"
module_name=$(echo "\\$.*\\s$1\\." | sed 's/[-_]/\[-_\]/g')
#echo "regex_module_name $module_name"
grep -Pr --include=Makefile "$module_name"
