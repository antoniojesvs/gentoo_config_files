#!/bin/bash
cat drivers_* | grep -Po "(?<=\\$\()[^)]*" | sort -u

