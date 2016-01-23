FROM tutum/ubuntu
ENV ROOT_PASS root
RUN apt-get update
RUN apt-get install -y php5 php5-sqlite php5-curl vim curl apache2 git build-essential libssl-dev
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
RUN source /root/.bashrc && nvm install 0.12.9
RUN npm i -g gulp grunt-cli
RUN a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN locale-gen en_US en_US.UTF-8
RUN dpkg-reconfigure locales
RUN echo 'export APACHE_RUN_USER=root' >> /etc/apache2/envvars
RUN echo 'export APACHE_RUN_GROUP=root' >> /etc/apache2/envvars
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install nodejs
