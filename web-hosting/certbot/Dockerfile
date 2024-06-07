FROM certbot/certbot

ARG ADMIN_MAIL
ARG DOMAIN_LIST

ENTRYPOINT certbot certonly --agree-tos --expand --webroot --webroot-path /var/www/letsencrypt --email $ADMIN_MAIL -d $DOMAIN_LIST

