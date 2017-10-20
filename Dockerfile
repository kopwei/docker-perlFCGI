FROM nginx

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    zlib1g-dev libc6-dev \
    libssl-dev libstdc++-6-dev \
    libc-dev-bin liblzma-dev \
    git-core php-fpm php \
    libcgi-session-perl \
    liburi-perl libfcgi-perl \
    libconfig-inifiles-perl \
    libipc-system-simple-perl \
    libsub-override-perl \
    libjson-perl libjson-any-perl \
    libjson-xs-perl \
    binutils-dev genisoimage syslinux && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY default.conf /etc/nginx/conf.d/default.conf
COPY fastcgi-wrapper.pl /usr/bin/fastcgi-wrapper.pl
COPY init.sh /init.sh

RUN chmod +x /init.sh && \
    chmod +x /usr/bin/fastcgi-wrapper.pl && \
    mkdir -p /var/www/my_site && \
    mkdir  /var/www/log && \
    chown -R www-data:www-data /var/www/my_site && \
    touch /var/www/log/my_site.access.log && \
    chsh www-data -s /bin/bash


EXPOSE 80

CMD /init.sh
