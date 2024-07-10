#!/bin/bash

# Check if Apache2 is installed
if ! dpkg -l | grep -q "ii  apache2 "; then
    echo "Apache2 is not installed. Installing..."
    
    # Update package index
    sudo apt update
    
    # Install Apache2
    sudo apt install -y apache2
    
    # Check if installation was successful
    if ! dpkg -s apache2 &> /dev/null; then
        echo "Apache2 installation failed. Please check for errors."
        exit 1
    fi
    
    echo "Apache2 has been installed successfully."
else
    echo "Apache2 is already installed."
fi

