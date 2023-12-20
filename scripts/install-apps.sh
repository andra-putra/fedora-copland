#!/bin/bash

# Install Packages from List
echo "Installing packages from list..."
sudo dnf install $(cat ../installed_packages.txt)

echo "Installations complete."

