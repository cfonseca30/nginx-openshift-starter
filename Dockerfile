FROM nginx:stable-alpine

RUN mkdir -p \
      /tmp/nginx/client_temp \
      /tmp/nginx/proxy_temp \
      /tmp/nginx/fastcgi_temp \
      /tmp/nginx/scgi_temp \
      /tmp/nginx/uwsgi_temp \
 && chmod -R g+rwx /tmp/nginx \
 && rm /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx","-g","daemon off;"]