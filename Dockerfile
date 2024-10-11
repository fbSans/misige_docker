FROM ubuntu:24.10

RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install systemd
RUN apt -y install curl
RUN apt -y install vim
RUN apt -y install php-cli
RUN apt -y install unzip

RUN apt -y install wget
#RUN apt-get -y install chromium-browser

#TODO: check the hash after the download
RUN curl -sS https://getcomposer.org/installer  -o  /tmp/composer-setup.php
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer


RUN apt -y install mariadb-server

ENV APP_FOLDER=/var/www/html/misige

#App Directory
COPY misige_files ${APP_FOLDER}

#Start Services
# Unfurtunately I had to use a hack to start services in Dockerfile and keep the container alive


##Apache
RUN echo -n "ServerName localhost" >>  /etc/apache2/apache2.conf
RUN echo -n "sh /etc/apache2/envvars\n" >> ~/.bashrc
RUN echo -n "service apache2 start\n" >> ~/.bashrc

##Maria DB
RUN echo -n "service mariadb start\n" >> ~/.bashrc

EXPOSE 80

