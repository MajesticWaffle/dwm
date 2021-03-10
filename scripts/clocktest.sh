#!/bin/bash

while true; do
	xsetroot -name " Vol: $(pamixer --get-volume-human) | $(date +"%F %R") "
	
	if [ $(pamixer --get-volume) -gt 100 ]; then
		pactl set-sink-volume 0 100%
	fi
	sleep 0.1
done
