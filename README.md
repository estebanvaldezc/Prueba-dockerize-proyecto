# Prueba-dockerize-proyecto
Proyecto que contiene un archivo html y css asi como un Dockerfile que permite su ejecucion a traves de un contenedor de Docker. Las indicaciones del README son orientadas a ejecutar el proyecto dentro de un contenedor con un volumen mapeado al directorio del proyecto.


**Para ejecutar este proyecto dentro de un contenedor Docker, debemos seguir los siguientes pasos:**

1. Clone el proyecto.
2. Abra una terminal en la ubicacion del proyecto.
3. Ejecute el siguiente comando para construir la imagen Docker:
   ```
   docker build -t nombre-de-tu-imagen .
    ```
   Donde ¨nombre-de-tu-imagen¨ puede ser modificado con el nombre que desee.
4. Ejecutar el contenedor con volumen mapeado.
   ```
   docker run -d -p 8080:80 -v /ruta/a/tu/proyecto:/usr/share/nginx/html nombre-de-tu-imagen
    ```
   Ejecute el comando ```pwd``` para verificar la ruta a su proyecto y reemplace ¨/ruta/a/tu/proyecto¨.           Tambien debe utilizar el nombre de la imagen que creo en el punto numero 3 al final del comando.
5. Acceder al proyecto, navegue a la direccion [localhost](http://localhost:8080) en el navegador de su preferencia.
6. Deberia tener el proyecto ejecutandose en un contenedor de Docker mapeado al directorio en su maquina por lo que tiene la posibilidad de hacer cambios en los archivos ¨index.html¨ y ¨estilos.css¨ de manera a que se vean reflejados en su navegador sin necesidad de detener el contenedor y volver a correrlo.
