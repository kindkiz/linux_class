#!/bin/sh
read a b

if [ $a -le 0 ] || [ $b -le 0 ]
then
  echo "Out of range!"
  exit 1
fi 

for i in $(seq 1 $a)
do
  for j in $(seq 1 $b)
    do
      multi=$i
      multi=`expr $multi \* $j` 
      echo -n "$i*$j=$multi " 
    done
  echo
done
exit 0
