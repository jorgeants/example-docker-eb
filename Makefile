run:
	docker run -d \
		--name nginx-php-fpm \
		-v `pwd`/src:/var/www/html/ \
		-v `pwd`/config/nginx/default:/etc/nginx/sites-available/default \
		-p 80:80 \
		delermando/nginx-php-fpm
rm:
	docker rm -f nginx-php-fpm
