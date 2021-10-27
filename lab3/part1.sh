#!/bin/bash

find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000 > part1output.txt

