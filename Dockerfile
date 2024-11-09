# Usa la imagen base de Nginx
FROM nginx:alpine

# Copia los archivos de tu sitio web en el directorio que Nginx sirve por defecto
COPY . /usr/share/nginx/html

# Expone el puerto 80 para acceder al sitio web
EXPOSE 80

# Inicia el servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
