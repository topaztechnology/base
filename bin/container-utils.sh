#!/bin/bash

if [[ "$(env | grep KUBERNETES | wc -l)" -eq 0 ]]; then
    IN_KUBERNETES=0
else
    IN_KUBERNETES=1
fi
