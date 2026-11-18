#!/bin/bash
set -e

echo "Generating Packages index..."
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

echo "Generating Release file..."
apt-ftparchive release . > Release

echo "Signing Release file..."
gpg --default-key "your-email@example.com" -abs -o Release.gpg Release
gpg --default-key "your-email@example.com" --clearsign -o InRelease Release

echo "Repo signed successfully!"
