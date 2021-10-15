#!/bin/sh

cd /usr/src/kernels; 
for f in `find . -type f -name "*.h"`; 
do grep -w -c magic "$f"
done | wc -l 

