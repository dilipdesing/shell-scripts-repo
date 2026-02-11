#If Else condition 

#!/usr/bin/env bash
num=50
if I $num -gt 100 ]; then
echo "Number is greater than 100"
elif I $num -gt 50 ]; then
echo "Number is greater than 50 but not greater than 100"
else
echo "Number is 50 or less"
fi