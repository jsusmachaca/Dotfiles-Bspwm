#! /bin/bash

read -p "Escanear [s] Conectarse [c] Desconectarse [d] Mostrar dispositivos [m] Salir [q]: " scann

if [ $scann == "s" ]; then
	bluetoothctl power on
	echo "Pulse [^C] para dejar de scanear"
        bluetoothctl scan on
	read -p "Dispositivos para emparejar: " pairer
	bluetoothctl pair $pairer
	echo "Connectando..."
	sleep 3
	bluetoothctl connect $pairer
	echo "Conectado satisfactoriamente"
	sleep 3

elif [ $scann == "c" ]; then
	bluetoothctl power on
        bluetoothctl devices
	sleep 3
	bluetoothctl paired-devices
	read -p "Elige un dispositivo: " device
	bluetoothctl connect $device
	sleep 3
	echo "Conectado satisfactoriamente"
	sleep 5

elif [ $scann == "m" ]; then
	bluetoothctl paired-devices
	sleep 5
	bluetoothctl power off
	echo Terminando...
	sleep 3
elif [ $scann == "d" ]; then
	bluetoothctl power off
	echo "Desconectando"
	sleep 3
	echo "Bluetooth apagado"
	echo
else
	bluetoothctl power off
	echo Bien
	sleep 3

fi
