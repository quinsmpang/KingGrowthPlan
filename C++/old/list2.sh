#!/bin/bash

#temppath='../../Classes


list_alldir()
{
    for file in $1/*
    do
        if [ -d "$file" ]; then
            index=1
            echo '  <key>'$file'</key>'>>ManImage.plist
            echo '  <dict>'>>ManImage.plist
            list_alldir $file
            echo '  </dict>'>>ManImage.plist     
        else
            echo '      <key>'$index'</key>'>>ManImage.plist
            echo '      <string>Images/'$file'</string>'>>ManImage.plist
            ((index++))
        fi
    done     
}
echo '<?xml version="1.0" encoding="UTF-8"?>'>ManImage.plist
echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'>>ManImage.plist
echo '<plist version="1.0">'>>ManImage.plist
echo '<dict>'>>ManImage.plist
list_alldir $1
echo '</dict>'>>ManImage.plist
echo '</plist>'>>ManImage.plist