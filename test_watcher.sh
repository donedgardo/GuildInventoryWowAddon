#!/bin/bash
busted
until false; do
    inotifywait -r -e modify --exclude '\.git' .
    busted
done