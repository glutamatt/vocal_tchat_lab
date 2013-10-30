#!/bin/bash
arecord -q -f dat -t wav -B 100 | ffmpeg -loglevel panic -y -i - -ar 16000 -acodec flac file.flac  1>&2 
wget -q -U "Mozilla/5.0" --post-file file.flac --header "Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=fr-fr&client=chromium" | cut -d\" -f12  > stt.txt
cat stt.txt
rm file.flac  > /dev/null 2>&1