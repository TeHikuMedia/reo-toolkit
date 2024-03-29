#! /bin/bash
set -ex

# Install packages
pip3 install coverage pytest
pip3 install -e .

# Install nltk tokenizers
python3 -c "import nltk;nltk.download('punkt', download_dir='/nltk_data')"

# Run tests
make test

# Create .whl file
python3 setup.py bdist_wheel --universal

# Send dist/ to /output
cp -r dist/ /output
