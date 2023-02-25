# Dotfiles-Bspwm
Archivos de configuración BSPWM versión 1

![image](https://user-images.githubusercontent.com/118281223/221341784-2f1a9884-9c72-4e1a-9fd1-426fc09da727.png)

![image](https://user-images.githubusercontent.com/118281223/221342520-f00b7e87-94e3-4c75-a95b-4b0d73fe0b09.png)

![image](https://user-images.githubusercontent.com/118281223/221342530-4440c1cc-34d9-4434-91be-b90fcb73c4a7.png)

![image](https://user-images.githubusercontent.com/118281223/221343083-bef0c982-81f6-4943-9b75-9c617c84aa2e.png)

# Dependencias  

Primero vas a tener que descargar los siguentes: (
bspwm 
sxhkd
polybar
rofi
picom
feh
git
).


En ciertas lineas de los archivos bspwmrc ![image](https://user-images.githubusercontent.com/118281223/221344695-6b1c6f28-076e-401f-b012-1b6327978ce6.png) y
status ![image](https://user-images.githubusercontent.com/118281223/221344720-bfc8d8bf-921a-4db5-b5cb-f170c674c547.png)
se debe cambiar los nombres de las rutas y la interfaz de red
# Instalación de los paquetes necesarios en Ubuntu y distros basadas en Debian 
```sh
sudo apt install bspwm polybar rofi picom feh git 
```
# Instalación de los paquetes necesarios en ArchLinux
```sh
sudo pacman -S bspwm sxhkd polybar rofi picom feh git 
```
# Instalación del thema en distribuciones basadas en Debian
```sh
cd  ~/Descargas/
git clone git@github.com:JsasMachaca/Dotfiles-Bspwm.git
cd Dotfiles-Bspwm/Dotfiles\ Bspwm/
cp * -r ~/.config/
```
Asignación de permisos a los siguientes archivos
```sh
cd ~/.config/bin
chmod +x *
