#!/bin/bash

echo $(dirname $0)

#python3 -m pip install requests

cd $(dirname $0)/scripts/

echo grabbing KompasTV Streaming URL
python3 KompasTV.py > ../KompasTV.m3u8

echo grabbing MetroTV Streaming URL
python3 metrotv.py > ../MetroTV.m3u8

echo grabbing liputan6 Streaming URL
python3 liputan6.py > ../liputan6.m3u8

echo grabbing tvOne Streaming URL
python3 tvone.py > ../tvOne.m3u8

echo grabbing NET Streaming URL
python3 NET.py > ../NET.m3u8


echo m3u grabbed
