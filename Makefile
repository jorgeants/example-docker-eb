run:
	docker run -d \
		--name nginx-php-fpm \
		-v `pwd`/src:/var/www/html/ \
		-v `pwd`/config/nginx/default:/etc/nginx/sites-available/default \
		-p 80:80 \
		personare/nginx-php7-fpm:1.0
rm:
	docker rm -f nginx-php-fpm
