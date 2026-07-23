FROM nginx:stable-alpine3.24-perl

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN apk add --no-cache curl

ENV NGINX_PORT=8080
EXPOSE $NGINX_PORT

CMD ["nginx", "-g", "daemon off;"]