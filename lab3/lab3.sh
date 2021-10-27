#!/bin/bash

echo "1. Find all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setuid and owned by root."
read -p "Hit any key to continue."
echo find /bin/ /sbin/ /usr/bin/ /usr/sbin/ -user root -perm /u+s
find /bin/ /sbin/ /usr/bin/ /usr/sbin/ -user root -perm /u+s > part1output.txt
cat part1output.txt

echo "2. Find all files across the entire system that have setuid or setgid enabled (regardless of owner)."
read -p "Hit any key to continue."
echo find / -perm /u+s > part2output.txt
echo find / -perm /g+s >> part2output.txt
find / -perm /u+s > part2output.txt
find / -perm /g+s >> part2output.txt
cat part2output.txt

echo "3. Find all files in /var that have changed in the last 20 minutes."
read -p "Hit any key to continue."
echo find /var -cmin -20 > part3output.txt
find /var -cmin -20 > part3output.txt
cat part3output.txt

echo "4. Find all files in /var that are regular files of zero length."
read -p "Hit any key to continue."
echo find /var -type f -size 0 > part4output.txt
find /var -type f -size 0 > part4output.txt
cat part4output.txt

echo "5. Find all files in /dev that are not regular files and also not directories."
read -p "Hit any key to continue."
echo find /dev ! -type d ! -type f > part5output.txt
find /dev ! -type d ! -type f > part5output.txt
cat part5output.txt

echo "6. Find all directories in /home that are not owned by root. In the same command, change their permissions to ensure they have 711 (-rwx--x--x) permissions."
read -p "Hit any key to continue."
echo find /home ! -user root -type d -exec chmod 711 {} \; 
find /home ! -user root -type d > part6output.txt
find /home ! -user root -type d -exec chmod 711 {} \; 
cat part6output.txt

echo "7. Find all regular files in /home that are not owned by root. In the same command, change their permissions to ensure they have 755 (-rwxr-xr-x) permissions."
read -p "Hit any key to continue."
echo find /home ! -user root -type f -exec chmod 755 {} \; 
find /home ! -user root -type f > part7output.txt
find /home ! -user root -type f -exec chmod 755 {} \; 
cat part7output.txt

echo "8. Find all files (of all types) in /etc that have changed in the last 5 days."
read -p "Hit any key to continue."
echo find /etc -ctime -5 > part8output.txt
find /etc -ctime -5 > part8output.txt
cat part8output.txt