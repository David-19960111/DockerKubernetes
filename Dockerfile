#Imagen Base
FROM ubuntu:20.04

#Copiar el archivo local al contenedor
COPY index.html /var/www/html/

# Instalar el paquete tzdata para configurar la zona horaria
RUN apt-get update && apt-get install -y tzdata

# Configurar la zona horaria
ENV TZ=America/Argentina/Buenos_Aires
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Instalar un servicio (servidor web)
RUN apt-get update && apt-get install -y apache2

#Exponer el puerto 80 para acceder al servidor web en el contenedor
EXPOSE 8080

#Comando para iniciar el servidor web
CMD ["apache2ctl", "-D", "FOREGROUND"]