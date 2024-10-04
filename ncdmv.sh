#!/bin/sh

export PATH=$PATH:/usr/local/go/bin

locations="cary clayton durham-east durham-south fuquay-varina garner raleigh-east raleigh-north raleigh-west wendell"

cd /home/ubuntu/ncdmv

for location in $locations; do
    go run ./cmd/server -appt_type=driver-license-renewal -database_path=./database/ncdmv.db -locations=$location --discord_webhook=WEBHOOk >> ./logfile.log 2>&1
done
