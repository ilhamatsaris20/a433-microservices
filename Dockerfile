#menggunakan base image nodejs versi 14
FROM node:14-alpine
#working directory /app
WORKDIR /app
#menyalin seluruh source code ke working directory
COPY . .
#aplikasi berjalan pada production mode dan mengunakan container(database) bernama item-db
ENV NODE_ENV=production DB_HOST=item-db
#menginstall depedencies production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build
#aplikasi mengunakan port 8080
EXPOSE 8080
#menjalankan perintah npm start
CMD ["npm", "start"]
