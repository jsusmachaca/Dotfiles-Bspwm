#! /bin/bash

e="%{F#008fff}$(whoami)"

if [ $e ];then
	echo ${e^^}
fi
