#!/bin/bash
say() { local IFS=+;mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?ie=UTF-8&tl=fr&q=$*"; }
say $(php -r "echo urlencode(\"$*\");")