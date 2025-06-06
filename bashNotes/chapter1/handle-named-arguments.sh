#!/usr/bin/env bash

deploy=false
uglify=false

while (( $# > 1 )); do case $1 in 
    --deploy) deploy="$2";;
    --uglify) uglify="$2";;
    *) break;
    esac; shift 2
done

$deploy && echo "will deploy... deploy = $deploy"
$uglify && echo "will uglify.. uglify = $uglify"