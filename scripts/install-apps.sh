#!/bin/bash

echo "Installing packages from list..."
cat ../package_names.txt | xargs -I {} sudo dnf install -y {}

echo "Installations complete."

