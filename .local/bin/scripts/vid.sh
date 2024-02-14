#!/bin/sh

vid=$(yt-dlp -q -f 18 -g "$@"); devour ffplay -autoexit "$vid"
