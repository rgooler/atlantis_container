#!/bin/bash

FILENAME="demo.yaml"

if [ ! -f ${FILENAME} ]; then
    echo "${FILENAME} does not exist in this environment - it is mandatory for all environments"
    exit 1
fi

exit 0
