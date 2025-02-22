FROM nginx:alpine

LABEL maintainer="zargarov@mail.ru"
LABEL version="1.0"
LABEL description="NGINX container to test Tektone pipline"

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/index.html

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
