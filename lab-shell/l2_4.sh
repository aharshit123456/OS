#!/bin/bash


echo "$1"
echo $(ps -p $1 -v)
