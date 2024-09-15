#!/bin/bash

while :
do
	curl http://172.17.114.244:5000/
	sleep $((RANDOM % 300 ))
done