#!/bin/bash

echo $(dirname $0)

#python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 KompasTV.py > ../KompasTV.m3u8
python3 NET.py > ../NET.m3u8
python3 metrotv.py > ../MetroTV.m3u8
python3 inews.py > ../inews.m3u8
python3 tvone.py > ../tvOne.m3u8
python3 liputan6.py > ../liputan6.m3u8

echo m3u grabbed

#./git_schedule.sh
cd /root/
./git_test.sh

echo push and commit
