#!/bin/bash

# Set the duration in seconds for monitoring CPU usage
duration=180

# Set the threshold for CPU usage (100%)
threshold=100

# Set the interval in seconds to check CPU usage
interval=10

# Set the service name for code-server
service_name="code-server"

# Function to check CPU usage
check_cpu_usage() {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    if (( $(echo "$cpu_usage >= $threshold" | bc -l) )); then
        consecutive_count=$((consecutive_count + 1))
    else
        consecutive_count=0
    fi
}

# Function to kill code-server service
kill_code_server() {
    systemctl stop $service_name
    echo "code-server service has been stopped."
}

# Main script
consecutive_count=0
while true; do
    check_cpu_usage

    if [ $consecutive_count -ge $((duration / interval)) ]; then
        kill_code_server
        break
    fi

    sleep $interval
done