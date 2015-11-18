# PHP5.2 Docker

Docker with Centos 5, PHP 5.2, Apache 2.2 with some modules

---
Services
===
- Apache
- postfix
- vixie-cron (crond)

---
Usage example
===
###Needed directories on host:
- vhost
- webapp
- logs

### Usage example
- with custom php.ini
- with webapp root at /home/www/webapp

```
NAME="php52"
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
docker run -d \
    -p 80:80 \
    -v $DIR/data/webapp:/home/www/webapp \
    -v $DIR/data/logs:/var/log/httpd \
    -v $DIR/data/vhost:/etc/httpd/vhost.d \
    -v $DIR/php.ini:/etc/php.ini \
    --restart=always \
    --name $NAME \
    seti/php52
```
