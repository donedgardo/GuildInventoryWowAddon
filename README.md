# Guild Inventory Tracker

A wow addon that helps guild members keeps an inventory of members
individual inventory. 

Built using TDD.

## Development Setup
For running test:
* Install lua 5.4
* Install luarocks. 
* Install busted via luarocks.
* Install [inotify-tools](https://github.com/inotify-tools/inotify-tools)(Optional for watch mode)

Run test in watch mode (only works on linux-like terminals):
```shell
chmod +x test_watcher.sh
./test_watcher.sh
```