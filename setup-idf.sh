#!/bin/bash

mkdir -p build-tools || exit 1

export IDF_PATH="$(pwd)/deps/esp-idf"
export IDF_TOOLS_PATH="$(pwd)/build-tools/"

echo "Installing IDF"
echo "  from ${IDF_PATH}"
echo "  to ${IDF_TOOLS_PATH}"

${IDF_PATH}/tools/idf_tools.py install
${IDF_PATH}/tools/idf_tools.py install-python-env

echo "To setup your environment, run:"
echo " source $(pwd)/export.sh"