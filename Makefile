run:
	docker run -d \
		--name nginx-php-fpm \
		-v `pwd`/src:/var/www/html/ \
		-v `pwd`/config/nginx/default:/etc/nginx/sites-available/default \
		-p 80:80 \
		nginx-php
rm:
	docker rm -f nginx-php-fpm
