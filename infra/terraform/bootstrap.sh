#!/bin/bash
set -e

sudo apt-get update -y

sudo apt-get install -y curl

curl -sfL https://get.k3s.io | INSTALL_K3S_CHANNEL=stable K3S_KUBECONFIG_MODE="644" sh -

until kubectl get nodes >/dev/null 2>&1; do
  sleep 5
done

sudo mkdir -p /home/azureuser/.kube
sudo cp /etc/rancher/k3s/k3s.yaml /home/azureuser/.kube/config
sudo chown -R azureuser:azureuser /home/azureuser/.kube