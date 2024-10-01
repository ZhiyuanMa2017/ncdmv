#!/bin/sh

export PATH=$PATH:/usr/local/go/bin

cd /home/ubuntu/ncdmv
go run ./cmd/server -appt_type=driver-license-renewal -database_path=./database/ncdmv.db -locations=cary,clayton,durham-east,durham-south,fuquay-varina,garner,raleigh-east,raleigh-north,raleigh-west,wendell -interval=15 --discord_webhook=WEBHOOK >> ./logfile.log 2>&1
