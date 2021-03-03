#!/bin/bash
#
# Responsible for running one-time task(s) required to setup the application locally.
#
# NOTE: This script expects to be run from the project root with
# ./scripts/bootstrap.sh

set -o pipefail

if [ ! -f 'environment.sh' ]; then
echo "
export FLASK_ENV='development'
export NOTIFY_ENVIRONMENT='development'
export FLASK_APP=application.py
export FLASK_DEBUG=1
export WERKZEUG_DEBUG_PIN=off
"> environment.sh
fi

scripts/install_dependencies.sh
