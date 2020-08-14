#!/bin/bash

# exit when any command fails
set -e

## declare an array variable
declare -a arr=("scrap_imovirtual" "geocode")

## now loop through the above array
for i in "${arr[@]}"
do
   echo ""
   echo ""
   echo "=========================================="
   echo "== Running $i"
   echo "=========================================="
   # -b flag used to suppress print
   # python -m unittest discover -v $i -b
   coverage run --source=$i --omit=$i/test/* -m unittest discover -v $i -b
   coverage report -m
   echo "=========================================="
   # or do whatever with individual element of the array
done
