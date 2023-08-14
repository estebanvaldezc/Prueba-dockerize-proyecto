# Utiliza una imagen base de nginx, puedes cambiarla si necesitas otro servidor web.
FROM nginx

# Copia los archivos de tu proyecto al directorio web de nginx.
COPY . /usr/share/nginx/html

# Expone el puerto 80 para acceder al servidor web.
EXPOSE 80

# Comando que se ejecutará cuando el contenedor arranque.
CMD ["nginx", "-g", "daemon off;"]
