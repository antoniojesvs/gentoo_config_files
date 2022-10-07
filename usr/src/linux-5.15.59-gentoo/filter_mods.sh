#!/bin/bash
cat ~/Documentos/patito_endeavour | xargs -I "#" sh filter_options.sh "#"
