#!/bin/sh

NO=1
for i in * #萬用字元*
do
    echo "Loop $NO. $i"
    NO=$(($NO+1))
done
