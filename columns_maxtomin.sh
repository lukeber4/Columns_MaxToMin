#!/bin/bash

file=$1

max=`cat $file | awk '{print NF}' | sort -n | uniq -c | sort -n | awk '{print $2}' | head -1`
min=`cat $file | awk '{print NF}' | sort -n | uniq -c | sort -n | awk '{print $2}' | tail -1`

for i in {11..5}; do cat $file | awk 'NF=='"$i"'{print}{}'; done > $file.new
