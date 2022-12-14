#!/usr/bin/env bash

# Editor Config
wget -O ${GITPOD_REPO_ROOT}/.editorconfig https://gist.githubusercontent.com/oo00spy00oo/e4df74b3c1674fa350445a74fab3d6bf/raw/.editorconfig

# Combine Gitpod configs
mkdir -p ${GITPOD_REPO_ROOT}/.gitpod/
wget -O ${GITPOD_REPO_ROOT}/.gitpod/.gitpod-default.yml https://gist.githubusercontent.com/oo00spy00oo/e4df74b3c1674fa350445a74fab3d6bf/raw/.gitpod-default.yml

# Install packages via Homebrew
brew install fzf croc yq

# Mosh
sudo apt install mosh -y
