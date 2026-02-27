FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --chown=nginx:nginx index.html .
RUN chmod 644 /usr/share/nginx/html/index.html
LABEL authors="mist64"
