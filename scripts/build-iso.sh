#!/bin/bash
set -e

echo "Starting Indium OS build..."
cd iso
sudo lb build
echo "Build complete! ISO located in iso/live-image-amd64.hybrid.iso"
