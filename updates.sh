#!/bin/bash

# Mostrar el inicio del proceso
echo "Iniciando mantenimiento de sistema..."

# Actualizar la lista de paquetes (equivalente a apt-get update)
echo "Actualizando la lista de paquetes..."
sudo apt-get update -y

# Realizar la actualización de los paquetes (equivalente a apt-get upgrade)
echo "Actualizando los paquetes..."
sudo apt-get upgrade -y

# Realizar una actualización más profunda si es necesario (dist-upgrade)
echo "Realizando una actualización más profunda..."
sudo apt-get dist-upgrade -y

# Eliminar paquetes no necesarios (equivalente a apt-get autoremove)
echo "Eliminando paquetes innecesarios..."
sudo apt-get autoremove -y

# Limpiar el caché de paquetes descargados (equivalente a apt-get clean)
#echo "Limpiando el caché de paquetes..."
#sudo apt-get clean

# Eliminar archivos de caché innecesarios (equivalente a apt-get autoclean)
echo "Limpiando archivos de caché obsoletos..."
sudo apt-get autoclean

# Mostrar el final del proceso
echo "Mantenimiento completado con éxito."
