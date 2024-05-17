#!/bin/bash

# Function to check the top process using the highest CPU
check_top_cpu_process() {
    echo "Checking the top process using the highest CPU..."

    # Using 'ps' to get the top CPU consuming process
    top_process=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 2 | tail -n 1)

    echo "Top CPU consuming process:"
    echo "PID  PPID  CMD  %MEM  %CPU"
    echo "$top_process"
}

# Execute the function
check_top_cpu_process
