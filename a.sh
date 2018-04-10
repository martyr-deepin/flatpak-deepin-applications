#!/bin/bash
while read line
do
	cd /home/gs/workdir/deepin/flatpak-deepin-applications 
	./a $line > /dev/null 2>&1 || true
done</home/gs/test/store/qt1
