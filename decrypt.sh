#!/bin/sh
# To install the dependencies
pip3 install -r ./src/requirements.txt

# Sample command to run the script
#sh decrypt.sh
#File to decrypt: sample.csv.dat
#Private key path: private.pem
#Private key passphrase:

# shellcheck disable=SC2039
# shellcheck disable=SC2162
#read -p 'File to decrypt: ' filename
#read -p 'Private key path: ' privateKeyPath
#read -sp 'Private key passphrase: ' privateKeyPassphrase
#echo
#python3 ./src/decrypt.py "${filename}" "${privateKeyPath}" "${privateKeyPassphrase}"

# Sample command to run the script
# sh decrypt.sh sample.csv.dat private.pem test
filename=$1
privateKeyPath=$2
privateKeyPassphrase=$3
python3 ./src/decrypt.py "${filename}" "${privateKeyPath}" "${privateKeyPassphrase}"
