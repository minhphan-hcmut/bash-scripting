#!/usr/bin/env bash

echo "Who are you?"
read name
printf "Hello, %s\n" "$name"



echo "What are you doing?"
read action
#printf "You are ${action}ing" -> both are still working fine
echo "You are ${action}ing"