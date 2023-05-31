#!/bin/bash

# Check if APT or YUM package manager is available
if command -v apt &> /dev/null; then
    package_manager="apt"
elif command -v yum &> /dev/null; then
    package_manager="yum"
else
    echo "Neither APT nor YUM package manager is available. Exiting..."
    exit 1
fi

# Define the list of packages to install
packages=(
    "nodejs"
    "react"
    "python3"
    "mongodb"
    "postman"
    # Add more packages here
)

# Install each package using the appropriate package manager
for package in "${packages[@]}"; do
    echo "Installing $package..."
    sudo "$package_manager" install -y "$package"
done

