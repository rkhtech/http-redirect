FROM httpd:alpine

EXPOSE 9191

ADD httpd.conf /usr/local/apache2/conf/httpd.conf
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
