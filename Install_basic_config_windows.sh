#!/bin/bash

# Install Chocolatey (if not already installed)
if ! command -v choco &> /dev/null; then
    echo "Installing Chocolatey..."
    powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
else
    echo "Chocolatey is already installed."
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

# Install each package using Chocolatey
for package in "${packages[@]}"; do
    echo "Installing $package..."
    choco install -y "$package"
done

