#!/usr/bin/env bash


# weak quote ""
# world="World"
# echo "Hello $world"
# # > Hello World


# strong quote ''
# world="World!"
# echo 'Hello $world'
# # >Hello $world

world="World"
echo "Hello \$world"
# >Hello $world
# the backslash for escaping the weak quote