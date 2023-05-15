#!/bin/bash
sourceFileName="dist"
target="htmltest"
if [ ! -d "/usr/share/nginx" ];then
    echo "Error: /usr/share/nginx not exits, exit"
    exit 1
fi
cd /usr/share/nginx


if [ ! -f "/usr/share/nginx/packages/$sourceFileName.zip" ];then
    echo "Error: packages/$sourceFileName.zip not exits, exit"
    exit 2
fi

if [ ! -d "/usr/share/nginx/backup" ];then
    mkdir backup
    echo "backup directory created"
fi
rm -rf $sourceFileName
unzip /usr/share/nginx/packages/$sourceFileName.zip -d .
mv $target backup/$target$(date +%Y-%m-%d%H:%M:%S)
mv $sourceFileName $target
rm -f packages/$sourceFileName.zip
echo "deploy completed"


