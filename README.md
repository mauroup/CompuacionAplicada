La entrega corrige los puntos desaprobados por el profesor. Los mismos son:


--- Redes ---

Punto 3.1) Flag static: Desaprobado

Punto 3.2) Configuracion de Address - NetMask - Gateway: Desaprobado



Grupo1$ cat etc/network/interfaces
# This file describes the network interfaces available on your system

# and how to activate them. For more information, see interfaces(5).



source /etc/network/interfaces.d/*



# The loopback network interface

auto lo

iface lo inet loopback



# The primary network interface

auto enp0s3

iface enp0s3 inet dhcp



--- Storage ---

Punto 4.1) Agregado de Disco 10 GB: Desaprobado

Punto 4.2) Tamaño de las particiones en 3 GB y 6 GB: Desaprobado

No hicieron la redirección del /proc/partitions, sin eso no puedo comprobar que hayan realizado correctamente las particiones.

Punto 5.2) Nombre de los archivos con formato ANSI: Desaprobado

No te esta tomando la variable $NOMBRE revisa el backup_dir




Punto 5.3) Archivos de Backup en /backup_dir: Desaprobado

solo hay un backup, el otro no corrio
Punto 5.4): Ingreso de argumentos en script: Desprobado

Estas pasando el directorio de destino hardcodeados, tiene que ir por argumento





-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Corrección: Grupo1

--- Armado de Entorno ---

Punto 1.1) Se blanquea la password de root: Aprobado

Punto 1.2) Ensamblado de la maquina suministrado para TP: Aprobado

Punto 1.3) Hostname TPServer: Aprobado



--- Servicios ---

Punto 2.1) Instalacion de OpenSSH-Server: Aprobado

Punto 2.2) Instalacion de Apache-Server + PHP7.x y redireccion de Documentroot: Aprobado

Punto 2.3) Instalacion de Mysql o MariaDB: Aprobado



--- Redes ---

Punto 3.1) Flag static: Desaprobado

Punto 3.2) Configuracion de Address - NetMask - Gateway: Desaprobado



Grupo1$ cat etc/network/interfaces
# This file describes the network interfaces available on your system

# and how to activate them. For more information, see interfaces(5).



source /etc/network/interfaces.d/*



# The loopback network interface

auto lo

iface lo inet loopback



# The primary network interface

auto enp0s3

iface enp0s3 inet dhcp



--- Storage ---

Punto 4.1) Agregado de Disco 10 GB: Desaprobado

Punto 4.2) Tamaño de las particiones en 3 GB y 6 GB: Desaprobado

No hicieron la redirección del /proc/partitions, sin eso no puedo comprobar que hayan realizado correctamente las particiones.


Punto 4.3) index.php en /www_dir: Aprobado

Punto 4.4) Particiones agregadas en el fstab /www_dir: Aprobado

Punto 4.5) Particiones agregadas en el fstab /backup_dir: Aprobado



--- Backup ---

Punto 5.1) backup_full.sh en /opt/script: Aprobado

Punto 5.2) Nombre de los archivos con formato ANSI: Desaprobado

No te esta tomando la variable $NOMBRE revisa el backup_dir




Punto 5.3) Archivos de Backup en /backup_dir: Desaprobado

solo hay un backup, el otro no corrio
Punto 5.4): Ingreso de argumentos en script: Desprobado

Estas pasando el directorio de destino hardcodeados, tiene que ir por argumento


Punto 5.5): Ayuda en el script (-help): Aprobado

Punto 5.6): Validar existencia de directorios: Aprobado

Punto 5.7): Configuracion de Cron para Backup Aprobado



--- Entregables ---

Punto 6.1) Entregables: Aprobado

Punto 6.2) Directorios subidos al repositorio: Aprobado

Punto 6.3) Entrega de Topologico: Aprobado
