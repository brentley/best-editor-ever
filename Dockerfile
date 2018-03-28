FROM nginx:alpine

ADD index.html narrow.css /usr/share/nginx/html/
ADD healthcheck/default.conf /etc/nginx/conf.d/
