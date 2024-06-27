#!/bin/bash
echo "Generate Your Secret Phrase"

sleep 2

echo "Enter Secret Phrase Length :"
read PASS_LENGTH

for p in $(seq 1); 
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done