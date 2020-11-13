#!/bin/bash
set -v

sudo sed -i 's/127.0.1.1/127.0.0.1/' /etc/hosts
git config --global user.name "ManageIQ"
git config --global user.email "contact@manageiq.org"
source $TRAVIS_BUILD_DIR/tools/ci/setup_vmdb_configs.sh
source $TRAVIS_BUILD_DIR/tools/ci/setup_ruby_env.sh

set +v
