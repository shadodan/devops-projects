FROM nginx

LABEL "PROJECT"="VProfile"
LABEL "AUTHOR"="matheus-dr"

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY vproapp.conf /etc/nginx/conf.d/vproapp.conf