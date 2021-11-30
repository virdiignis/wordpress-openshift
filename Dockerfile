FROM wordpress:5.8-apache

COPY apache_conf/ports.conf /etc/apache2/ports.conf
COPY apache_conf/000-default.conf /etc/apache2/sites-enabled/000-default.conf

RUN chgrp -R 0 /var/www/ \
  && chmod -R g=u /var/www

EXPOSE 8080
