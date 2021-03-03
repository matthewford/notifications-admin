set -o pipefail

source environment.sh

if [ ! $VIRTUAL_ENV ]; then
  virtualenv -p python3 ./venv
  . ./venv/bin/activate
fi

# we need the version file to exist otherwise the app will blow up
make generate-version-file

# Install Python development dependencies
pip3 install -r requirements_for_test.txt

npm install && npm run build
