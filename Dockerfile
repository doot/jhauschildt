FROM nginx:alpine
  COPY www /usr/share/nginx/html
  COPY nginx.default.conf /etc/nginx/conf.d/default.conf
  EXPOSE 5000
