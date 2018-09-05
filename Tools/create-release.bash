#!/usr/bin/env bash
set -o noglob
set -o nounset
set -o xtrace
set -o pipefail
set -o errexit

#######################################
# Create a new release branch
#######################################
TYPE=$1

release_version=$(./Tools/create-release.py ${TYPE})
cat AndroidSDKCore/sdk-version.txt

# create a branch, push on success
git checkout -b "release/${release_version}"
git branch
#git push --set-upstream origin "release/${release_version}"
