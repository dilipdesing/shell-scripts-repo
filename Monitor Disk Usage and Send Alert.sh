# Q: Monitor Disk Usage and Send Alert

#!/bin/bash 
# disk_alert.sh 
 
THRESHOLD=80 
EMAIL="admin@example.com" 
 
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//') 
 
if (( USAGE > THRESHOLD )); then 
    echo "Disk usage is $USAGE%, above threshold $THRESHOLD%" | mail -s "Disk Alert" 
"$EMAIL" 
    echo "Alert sent!" 
else 
    echo "Disk usage is normal: $USAGE%" 
fi