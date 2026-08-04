#!/bin/bash

# Exit if any command fails
set -e

echo "Updating system packages..."
sudo apt update -y

echo "Installing required dependencies..."
sudo apt install -y ca-certificates curl gnupg lsb-release

echo "Adding Docker GPG key..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "Setting up Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Updating apt again..."
sudo apt update -y

echo "Installing Docker..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting and enabling Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Adding current user to docker group..."
sudo usermod -aG docker ${USER}

echo "Docker installation completed!"
echo "Please logout and login again or run: newgrp docker"
