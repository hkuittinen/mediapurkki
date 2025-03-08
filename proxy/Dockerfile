FROM nginx:1.27.3

RUN rm /etc/nginx/conf.d/default.conf

# Templates allow use of env variables.
COPY default.conf.template /etc/nginx/templates/default.conf.template
