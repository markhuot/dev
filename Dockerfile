FROM tutum/ubuntu
ENV ROOT_PASS root
RUN apt-get update
RUN apt-get install -y php5 php5-sqlite vim curl apache2
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
