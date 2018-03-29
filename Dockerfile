FROM nginx:alpine

ADD index.html narrow.css /usr/share/nginx/html/
ADD images /usr/share/nginx/html/images
ADD healthcheck/default.conf /etc/nginx/conf.d/

HEALTHCHECK --interval=10s --timeout=3s \
  CMD wget http://localhost/health/ || exit 1
