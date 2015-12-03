# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/test-app"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/test-app/tmp/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/test-app/log/unicorn.err.log"
stdout_path "/var/www/test-app/log/unicorn.out.log"

# Unicorn socket
listen "/tmp/unicorn.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
