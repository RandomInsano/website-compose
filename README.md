# Edwin's Adventures in Docker Compose

I like Docker and had a need to set up a PHP-based website for a friend. What better time to play around with Docker Compose?!

The dabbling that I've done has given me a Let's Encrypt secured host.

### To do

* Allow Let's Encrypt setup without needing to uncomment parts of the nginx config

## Noteable features

* Can scale the number of PHP workers via Kubernetes or Docker Swarm
* Doesn't advirtise the version of PHP being used
* PHP will never run as root

### Bibliography

* [A Docker-Compose PHP Environment From Scratch](https://x-team.com/blog/docker-compose-php-environment-from-scratch/)
* [Nginx and Let’s Encrypt with Docker in Less Than 5 Minutes](https://medium.com/@pentacent/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71)

