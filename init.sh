#!/bin/sh

mkdir -p /var/cache/ipxe-build
mkdir -p /var/run/ipxe-build
mkdir -p /var/tmp/ipxe-build
chown www-data:www-data /var/cache/ipxe-build /var/run/ipxe-build /var/tmp/ipxe-build
su - www-data -c "touch /var/run/ipxe-build/ipxe-build-cache.lock"
su - www-data -c "cd /var/tmp/ && rm -rf ipxe && git clone https://git.ipxe.org/ipxe.git"
cd /var/www && rm -rf ipxe-buildweb &&  git clone https://github.com/xbgmsharp/ipxe-buildweb.git
cd ipxe-buildweb && cp parseheaders.pl /var/tmp/ipxe/src/util/
chown www-data:www-data /var/tmp/ipxe/src/util/parseheaders.pl
cd /var/www && rm -rf my_site && mv ipxe-buildweb my_site
chown -R www-data:www-data /var/www/my_site
su - www-data -c /usr/bin/fastcgi-wrapper.pl;
service php7.0-fpm start
nginx -g 'daemon off;';
