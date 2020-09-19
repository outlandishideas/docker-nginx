FROM nginx:1-alpine

COPY ./application.conf /etc/nginx/conf.d/default.conf
