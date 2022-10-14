#!/usr/bin/env sh

wget -O .editorconfig https://gist.githubusercontent.com/oo00spy00oo/e4df74b3c1674fa350445a74fab3d6bf/raw/.editorconfig
wget -O .gitpod/.gitpod-default.yml https://gist.githubusercontent.com/oo00spy00oo/e4df74b3c1674fa350445a74fab3d6bf/raw/.gitpod-default.yml
yq eval-all '. as $item ireduce ({}; . *+ $item)' .gitpod/.gitpod-*.yml | yq 'sort_keys(.)' > .gitpod.yml

brew install fzf croc yq
