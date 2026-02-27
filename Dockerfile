FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --chown=nginx:nginx index.html .
COPY --chown=nginx:nginx styles.css .

RUN chmod 644 /usr/share/nginx/html/index.html && chmod 644 /usr/share/nginx/html/styles.css

LABEL authors="mist64"

HEALTHCHECK CMD test -r /usr/share/nginx/html/index.html || exit 1