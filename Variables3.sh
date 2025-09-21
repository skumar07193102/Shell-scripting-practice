#! bin/bash
start_time=$(data +%s)
sleep 10
end_time=$(data +%s)
total_time=end_time-start_time
echo "total time utilized to run the script: $total_time"