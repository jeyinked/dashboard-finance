FROM nginx:alpine
COPY fortuna.html /usr/share/nginx/html
EXPOSE 80
