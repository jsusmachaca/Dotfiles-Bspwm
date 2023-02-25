#! /bin/bash

echo
e=$(nmcli | grep " conectado " | sed '1q;d' | awk '{print $2}')
echo

if [ $e ];then
	echo "Estas Conectado a la red " $(nmcli | grep "conectado" | sed '1q;d' | awk '{print $4}')
	read -p "Desconectar [d] Salir [q]: " op
	if [ $op == "d" ];then
		echo
		nmcli radio wifi off
		echo "Te has desconectado"
	else

		echo "Hasta luego"
	fi

else

	echo "Estas conectado a una red [s]?"
        echo "[c] para conectarte a una red nueva"
        echo "[e] para conectarte a una red existente"

	read -p "Qué deseas hacer: " con
	if [ $con == "s" ];then
        	echo
	        echo "Bien"
	        echo
	elif [ $con == "c" ];then
        	echo
	        sleep 3
		nmcli radio wifi on
		sleep 3
        	nmcli device wifi rescan
	        sleep 5
        	nmcli device wifi list
	        sleep 3
        	echo
	        read -p "Ingresa el nombre la de red wifi: " name
	        sleep 3
        	read -p "Ingresa la contraseña: " passwd

	        nmcli device wifi connect $name password $passwd
        	sleep 3

	        echo "Conexión completa"

	elif [ $con == "e" ];then
		echo
		nmcli radio wifi on
		echo
		echo "Te has conectado satisfactoriamente"
		echo
	fi
fi
