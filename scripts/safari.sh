#!/usr/bin/env bash

number=$(ps aux | grep "/Applications/Safari.app/Contents/MacOS/Safari" | wc -l)
echo $number
if [ $number -gt 1 ]
then
    set -e
    osascript - <<EOF
    tell application "Safari"
        make new document
        activate
    end tell
EOF
else
    open -na safari
fi
