FROM wordpress:5.8-apache

COPY docker-entrypoint.sh /usr/local/bin
COPY apache_conf/ports.conf /etc/apache2/ports.conf
COPY apache_conf/000-default.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 8080
