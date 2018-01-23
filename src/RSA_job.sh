#!/bin/bash
for f in ../data/temp/*.csv
do
 # echo "Processing ${f} file..."
 # take action on each file. $f store current file name
 R CMD BATCH --vanilla --slave --args --l=-2 --u=0 --i=${f} --o=${f}.out -b R/RSA.R
done

