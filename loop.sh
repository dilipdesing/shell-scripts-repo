#!/bin/bash
num=0
while [ $num -lt 100 ]; do
echo $num
# Print the current value of num
num=$ ( (num + 1)) # Increment num by 1
done
