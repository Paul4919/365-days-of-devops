#!/bin/bash



# Create the required server directories
mkdir -p logs config backups scripts

# Gather and display system information
echo "Current User: $(whoami)"
echo "Current Date: $(date)"

# Confirm completion
echo "Server setup completed successfully!"
