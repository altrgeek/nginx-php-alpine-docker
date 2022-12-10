# nginx-php-alpine-docker

Lightweight php nginx server on an alpine image


## Features
<!------------------------------------------------------->

* Under 35 MB
* Alpine 3.17
* PHP 8.1.13-r0
* Nginx 1.22.1-r0


## Installation
<!------------------------------------------------------->

```sh
docker run --name some-php-nginx-alpine -d -v /your/php/app:/app/www -p 8888:8888 altrgeek/nginx-php-alpine:latest
```


## Dependencies
<!------------------------------------------------------->

* [Docker](https://www.docker.com/)


## Support
<!------------------------------------------------------->

Submit an [issue](https://github.com/altrgeek/php-nginx-alpine-docker/issues/new)


## Contributing
<!------------------------------------------------------->

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## Credits
<!------------------------------------------------------->

* [Jam Risser](https://github.com/clayrisser/php-nginx-alpine-docker)


## Changelog
<!------------------------------------------------------->

0.0.1 (2012-12-10)
* Initial release
