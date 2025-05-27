FROM nginx:alpine

COPY ./site /usr/share/nginx/html
COPY ./site/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY /etc/letsencrypt/live/clear-news.ru/ /etc/letsencrypt/live/clear-news.ru/

RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]