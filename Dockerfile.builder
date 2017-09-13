FROM amazeeio/centos7-php7.0-drupal-builder

COPY composer.json composer.lock /app/
COPY scripts /app/scripts
RUN composer install --no-dev
COPY . /app
