# Desafio - Docker y Kubernetes

## Descripcion del desafio

Este proyecto tiene como objetivo la creación de una imagen de Docker, su publicación en Docker Hub y el despliegue de esta imagen en un clúster de Minikube.

## Contenido

- [Requisitos](#requisitos)
- [Docker](#Docker)
  - [Creación de la Imagen Docker](#creación-de-la-imagen-docker)
  - [Publicación en Docker Hub](#publicación-en-docker-hub)
- [Despliegue en Minikube](#despliegue-en-minikube)
  - [Minikube Dashboard](#dashboardminikube)

## Requisitos

1 - Docker: Debes asegurarte de que Docker esté instalado en la máquina donde se realizará la construcción de la imagen.

2 - Minikube: Para el despliegue en Minikube, Minikube debe estar instalado y configurado correctamente en la máquina.

3 - Kubectl: Kubectl es la herramienta de línea de comandos de Kubernetes y generalmente se utiliza en conjunto con Minikube. Asegúrate de que esté instalado y configurado.

4 - Git: Si el código fuente del proyecto se encuentra en un repositorio Git, es necesario tener Git instalado para clonar el repositorio.

5 - Cuenta de Docker Hub: Si planeas publicar la imagen en Docker Hub, necesitas una cuenta de Docker Hub. Puedes mencionar esto como un requisito opcional, pero útil si alguien desea seguir tus pasos de publicación.



# Docker

## 1- Creacion de archivo Dockerfile.

## 2 - Construir la Imagen Docker: 
- Proporciona el comando para construir la imagen Docker. Asegúrate de incluir detalles como el nombre de la imagen y la ubicación del archivo Dockerfile.


```bash
docker build -t nombre-de-la-imagen -f ruta/al/Dockerfile .
```

## 3 - Publicacion de Docker Hub
- Iniciar Sesión en Docker Hub: Si no has iniciado sesión en Docker Hub, proporciona el comando para hacerlo.

```bash
docker login
```
### Etiquetar la Imagen para Docker Hub: Etiqueta la imagen con el nombre de usuario de Docker Hub y el repositorio.

```bash
docker tag nombre-de-la-imagen nombre-de-usuario/nombre-del-repositorio:etiqueta
```

## Subir la Imagen a Docker Hub: Sube la imagen etiquetada a Docker Hub.

```bash
docker push nombre-de-usuario/nombre-del-repositorio:etiqueta
```

# Despliegue en Minikube

### Asegúrate de que Minikube esté en funcionamiento. Si aún no has iniciado Minikube, puedes hacerlo con el comando:

```bash
minikube start
```

### Aplica el archivo de manifiesto YAML que describe la configuración de tu aplicación en Kubernetes. Supongamos que el archivo se llama mi-aplicacion.yaml y se encuentra en el directorio actual. Utiliza el siguiente comando:

```bash
kubectl apply -f mi-aplicacion.yaml
```

- Esto creará los recursos (pods, servicios, etc.) especificados en el archivo YAML en el clúster de Minikube.

### Verifica el estado del despliegue. Puedes comprobar que los recursos se hayan desplegado correctamente utilizando comandos como kubectl get pods, kubectl get services, y otros comandos de kubectl según corresponda.

## Acceso al Panel de Control de Minikube

### Minikube proporciona un panel de control web que permite supervisar y gestionar tu clúster de Kubernetes de manera visual. Para acceder al panel de control, sigue estos pasos:

1 - Inicia el Dashboard: Ejecuta el siguiente comando para iniciar el panel de control de Minikube:

```bash
minikube dashboard
```
Esto abrirá una ventana del navegador web con la interfaz gráfica del panel de control.

2 - Accede al Panel de Control en tu Navegador: La URL del panel de control se mostrará en la terminal. Puedes abrirla en tu navegador web para acceder a la interfaz gráfica. Por lo general, la URL es algo como http://127.0.0.1:XXXXX.

3 - Explora y Administra el Clúster: A través del panel de control, puedes explorar los pods, servicios, despliegues y otros recursos en tu clúster de Minikube. También puedes realizar tareas de administración, como la escalabilidad de aplicaciones, la visualización de registros y más.