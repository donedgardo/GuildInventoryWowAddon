#!/bin/bash
busted  # Run busted the first time

until false; do
    inotifywait -r -e modify --exclude '\.git' .
    busted
done