#!/bin/sh

((n = $1))
for i in $(seq 1 $n)
do
  in2csv ./export/$2$i.json >> ./csv/$2.csv
done


## for me
# ./tocsv.sh 24 contacts
# ./tocsv.sh 4 calendar
# ./tocsv.sh 62 thread
