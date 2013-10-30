#!/bin/bash
echo Please speak now and press Ctrl+C when done
./stt_fr.sh
./speechfr.sh $(php bot.php "$(cat stt.txt)")