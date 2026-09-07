# syntax=docker/dockerfile:1
ARG REGISTRY=forgejo.develop.10.199.64.20.nip.io
FROM ${REGISTRY}/root/alpine:3.24

RUN sed -i 's|dl-cdn.alpinelinux.org|mirrors.aliyun.com|g' /etc/apk/repositories \
    && apk add --no-cache nginx \
    && mkdir -p /usr/share/nginx/html
COPY build/web /usr/share/nginx/html

# SPA: Flutter web uses hash-free flat files; unknown paths fall back to /.
RUN printf 'server {\n    listen       8080;\n    server_name  localhost;\n    root   /usr/share/nginx/html;\n    index  index.html;\n    location /api/ {\n        proxy_pass http://easylab.temp.svc.cluster.local:8080;\n        proxy_set_header Host $host;\n        proxy_buffering off;\n        proxy_read_timeout 3600s;\n    }\n    location /v2/ {\n        proxy_pass http://easylab.temp.svc.cluster.local:8080;\n        proxy_set_header Host $host;\n        proxy_buffering off;\n    }\n    location / {\n        try_files $uri $uri/ /index.html;\n    }\n}\n' > /etc/nginx/http.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]