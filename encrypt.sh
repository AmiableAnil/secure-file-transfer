#!/bin/sh
# To install the dependencies
pip3 install -r ./src/requirements.txt

# Sample command to run the script
#sh encrypt.sh
#File to encrypt: sample.csv
#Public key path: public.pem

# shellcheck disable=SC2039
# shellcheck disable=SC2162
#read -p 'File to encrypt: ' filename
#read -p 'Public key path: ' publicKeyPath
#echo
#python3 ./src/encrypt.py "${filename}" "${publicKeyPath}"

# Sample command to run the script
# sh encrypt.sh sample.csv public.pem
filename=$1
publicKeyPath=$2
python3 ./src/encrypt.py "${filename}" "${publicKeyPath}"
