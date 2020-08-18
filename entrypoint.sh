#!/usr/bin/env bash
Xvfb :0 -screen 0 1024x768x24 2>/dev/null &
sudo -u demo \
    sh -c 'cd /home/demo \
        && DISPLAY=:0.0 ./cursor.js'
