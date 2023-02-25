#! /bin/bash

st=$(nmcli | grep " conectado " | sed '1q;d' | awk '{print $2}' )
net=%{F#ff0046}$(nmcli | grep " conectado " | sed '1q;d' | awk '{print $4}')

if [ $st ]; then
	ip="%{F#00D016}$(ifconfig wlp0s20f3 | grep "inet " | awk '{print $2}')"
	echo $net">> "$ip
else

	echo "%{F#FF0000}Desconectado" | tr [:lower:] [:upper:]
fi
