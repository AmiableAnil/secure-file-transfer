#!/bin/sh
# To install the dependencies
pip3 install -r ./src/requirements.txt

# Sample command to run the script
#sh encrypt-1.sh
#File to encrypt: sample.csv
#Public key path: public.pem

# shellcheck disable=SC2039
# shellcheck disable=SC2162
read -p 'File to encrypt: ' filename
# shellcheck disable=SC2162
# shellcheck disable=SC2039
read -p 'Public key path: ' publicKeyPath
echo
python3 ./src/encrypt.py "${filename}" "${publicKeyPath}"
