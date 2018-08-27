# Usage

````bash
$ docker run -d --name reverse-proxy -e "UPSTREAM=https://google.de" -e "VIRTUAL_HOST=test.example.com" -e "LETSENCRYPT_HOST=test.example.com" -e "LETSENCRYPT_EMAIL=test@example.com" -v /home/user/staticfiles:/var/www/html nginx-reverse-proxy
````
