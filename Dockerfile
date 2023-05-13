version: '3'
services:
  db: 
    image: mysql:latest
    environment:
      - MYSQL_DATABASE=db_web
      - MYSQL_USER=toor
      - MYSQL_PASSWORD=toor
      - MYSQL_ALLOW_EMPTY_PASSWORD=1 #Tanpa Password
    volumes:
      - "./db:/docker-entrypoint-initdb.d" # this is how we persist a sql db even when container stops
    ports:
      - 2206:3306
      - 2221:22
  www:
    image: php:apache
    volumes:
      - "./web:/var/www/html" # sync the current dir on local machine to the dir of container
    ports:
      - 2280:80
      - 2222:22
      - 443:443 # for future ssl traffic
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    ports:
      - 2281:80
    environment:
      - PMA_HOST=db
      - PMA_PORT=3306
