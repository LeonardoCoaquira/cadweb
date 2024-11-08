# Usa una imagen base de Nginx para servir archivos estáticos
FROM nginx:alpine

# Crea una carpeta para almacenar el contenido en el contenedor
WORKDIR /usr/share/nginx/html

# Copia el contenido de tu proyecto al contenedor
COPY . /usr/share/nginx/html

# Expone el puerto 80 para el servidor Nginx
EXPOSE 80

# Nginx sirve automáticamente el contenido en /usr/share/nginx/html,
# donde ahora está tu archivo index.html.
