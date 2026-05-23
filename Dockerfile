FROM nginx:alpine
COPY . /finance-dashboard.html /usr/share/nginx/html
EXPOSE 80
