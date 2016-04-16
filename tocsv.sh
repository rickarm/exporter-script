#!/bin/sh

((n = $1))
for i in $(seq 1 $n)
do
  in2csv ./export/$2$i.json >> ./csv/$2.csv
done
