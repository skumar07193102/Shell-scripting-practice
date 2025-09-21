#! bin/bash
start_time=$(date +%s)
sleep 10
end_time=$(date +%s)
total_time=$end_time-$start_time
echo "total time utilized to run the script: $total_time"