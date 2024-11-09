FROM nginx:alpine

# Copia tu archivo de configuración en el directorio de configuración de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia los archivos de tu sitio en el directorio que Nginx usa para servir contenido
COPY . /usr/share/nginx/html

# Expone el puerto 80 para el tráfico web
EXPOSE 80

# Ejecuta Nginx en modo primer plano
CMD ["nginx", "-g", "daemon off;"]
