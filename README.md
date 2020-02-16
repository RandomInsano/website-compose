# Edwin's Adventures in Docker Compose

I like Docker and had a need to set up a PHP-based website for a friend. What better time to play around with Docker Compose?!

The dabbling that I've done has given me a Let's Encrypt secured host.

### To do

* Allow Let's Encrypt setup without needing to uncomment parts of the nginx config

## Noteable features

* Can scale the number of PHP workers via Kubernetes or Docker Swarm
* Doesn't advirtise the version of PHP being used
* PHP will never run as root

## Usage

It's a bit awkward at the moment because nginx is reliant on certificates created by certbot and certbot is reliant on nginx. I need to build scripts or at least directions for the bootstrap phase, then the launch phase. Excuse the lack of guidance here at the moment.

Here's the general overview for adding a new domain:
```
cp -r web-root/example.com/ web-root/example.net
vi web-root/example.net/index.html # Make it look pretty
cp docker-compose/nginx/sites/example.com.conf docker-compose/nginx/sites/example.net.conf
vi docker-compose/nginx/sites/example.com.conf # Disable SSL, change `server_name`, change `root` directory
vi docker-compose/certbot/Dockerfile # Add `example.net` domain to the list
sudo ./update.sh # To rebuild dockercompose_certbot_1 and generate new certs
vi docker-compose/nginx/sites/example.com.conf # Enable SSL
sudo ./update.sh # To restart nginx to load new certificates
```

### Bibliography

* [A Docker-Compose PHP Environment From Scratch](https://x-team.com/blog/docker-compose-php-environment-from-scratch/)
* [Nginx and Let’s Encrypt with Docker in Less Than 5 Minutes](https://medium.com/@pentacent/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71)

