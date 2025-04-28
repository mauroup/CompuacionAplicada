# Computación Aplicada 2025 - TP Final

## Participantes
- Mauro Gil
- JOSE IGNACIO FERNANDEZ DE LA RUA
- LUIS LIGARRIBAY
- IAN RUIZ DIAZ
- ABRIL SANTISO

## Descripción del Proyecto
Este repositorio contiene los backups y configuraciones de un servidor Debian configurado manualmente para prácticas de administración de sistemas.

Las principales tareas realizadas fueron:
- Instalación y configuración de Debian.
- Configuración de red con IP estática.
- Agregado y particionado de discos adicionales.
- Configuración de Apache apuntando a directorios personalizados.
- Creación de scripts de backup automáticos programados con `crontab`.
- Gestión de control de versiones con GitHub utilizando autenticación por token.

## Contenido del repositorio
Cada uno de los siguientes directorios del servidor fue comprimido en formato `.tar.gz`:
- `/root` → `root.tar.gz`
- `/etc` → `etc.tar.gz`
- `/opt` → `opt.tar.gz`
- `/proc` → `proc.tar.gz`
- `/www_dir` → `www_dir.tar.gz`
- `/backup_dir` → `backup_dir.tar.gz`

> **Nota:** El directorio `/var` fue dividido en varias partes (`var_part_aa`, `var_part_ab`, etc.) debido a su tamaño.

## Topología de infraestructura
                              +---------------------+
                |    GitHub Repo       |
                |  ComputacionAplicada |
                +----------+----------+
                           |
                  Push/Pull con Token
                           |
                   +-------+--------+
                   |     Servidor    |
                   |    Debian 11    |
                   +-------+--------+
                           |
        +------------------+------------------+
        |                                     |
+-------+--------+                    +-------+--------+
| Disco Principal|                    | Disco Adicional|
|    (sda)       |                    |     (sdc)       |
|  10 GB total   |                    |   10 GB total   |
| - / (root)     | 8 GB                | - /www_dir (3GB)|
| - SWAP         | 2 GB                | - /backup_dir (6GB)|
+----------------+                    +-----------------+
        |
+-------+--------+
| Segundo Disco  |
|    (sdb)       |
|  8 GB total    |
| - /home        | 8 GB
+----------------+

Servicios configurados:
- Apache2 (sirviendo contenido desde `/www_dir`)
- Crontab (backups automáticos diarios y días específicos)
- Script personalizado: `/opt/scripts/backup_full.sh`


---
