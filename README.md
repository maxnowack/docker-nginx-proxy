# Usage

1. insert server domain/path in `confs/host` proxy_pass
2. build image
````bash
$ docker build -t nginx-reverse-proxy .
````
3. run the container
````bash
$ docker run -d --name reverse-proxy -e "VIRTUAL_HOST=test.example.com" -e "LETSENCRYPT_HOST=test.example.com" -e "LETSENCRYPT_EMAIL=test@example.com" -v /home/user/staticfiles:/var/www/html nginx-reverse-proxy
````
