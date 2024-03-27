FROM nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./dist /usr/share/nginx/html

RUN chmod 777 -R /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
