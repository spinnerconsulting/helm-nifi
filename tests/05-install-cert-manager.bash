#!/bin/bash -x

# Install cmctl per https://cert-manager.io/docs/usage/cmctl/#installation

sudo apt-get update
sudo apt-get install -y golang-go

OS=$(go env GOOS)
ARCH=$(go env GOARCH)

curl -fsSL -o cmctl https://github.com/cert-manager/cmctl/releases/latest/download/cmctl_${OS}_${ARCH}
chmod +x cmctl
sudo mv cmctl /usr/local/bin

cmctl experimental install
