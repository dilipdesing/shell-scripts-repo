#Q. Shell Script Function to Find and Kill Zombie Processes

kill_zombies() { 
    echo "Checking for zombie processes..." 
 
    ZOMBIES=$(ps aux | awk '$8=="Z" {print $2}') 
 
    if [ -z "$ZOMBIES" ]; then 
        echo "No zombie processes found." 
        return 
    fi 
 
    echo "Zombie PIDs found: $ZOMBIES" 
    echo "Killing parent processes..." 
 
    for pid in $ZOMBIES 
    do 
        ppid=$(ps -o ppid= -p "$pid") 
        echo "Killing parent process $ppid for zombie PID $pid" 
        kill -9 "$ppid" 
    done 
 
    echo "Finished cleanup." 
} 
 
kill_zombies