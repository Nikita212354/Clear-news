FROM nginx:alpine

COPY ./site /usr/share/nginx/html

COPY ./site/nginx/nginx.conf /etc/nginx/conf.d/default.conf

RUN rm /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]