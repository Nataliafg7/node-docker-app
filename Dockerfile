# Usar la imagen base Node Alpine
FROM node:18-alpine

# Definir carpeta de trabajo
WORKDIR /app

# Copiar archivos package y dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para ejecutar Node.js en Docker
CMD ["node", "app.js"]
