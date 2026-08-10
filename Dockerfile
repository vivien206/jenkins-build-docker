FROM nginx:latest
RUN sed -i 's/nginx/vivien/g'  /usr/share/nginx/html/index.html
EXPOSE 80
