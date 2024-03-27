FROM nginx:stable-alpine as production-stage
COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./dist /usr/share/nginx/html

RUN chmod 777 -R /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
