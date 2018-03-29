FROM nginx:alpine

ADD index.html narrow.css /usr/share/nginx/html/
ADD images /usr/share/nginx/html/images
ADD healthcheck/default.conf /etc/nginx/conf.d/
