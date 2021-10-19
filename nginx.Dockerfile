FROM nginx:alpine as nginx

RUN rm -f /etc/nginx/conf.d/default.conf

COPY nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'"]
