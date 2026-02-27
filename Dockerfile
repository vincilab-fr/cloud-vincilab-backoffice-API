FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html .
LABEL authors="mist64"
