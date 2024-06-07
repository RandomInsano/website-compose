FROM php:8-fpm-alpine

# Below is an example of packages you'd want for Wordpress
RUN set -ex \
    && apk add --no-cache --virtual \
        .phpize-deps $PHPIZE_DEPS \
        gd \
        imagemagick-dev \
        libtool \
        libzip-dev \
        zlib-dev \
        libpng-dev \
    && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" 
RUN docker-php-ext-install mysqli bcmath exif gd zip
RUN docker-php-ext-enable mysqli bcmath exif gd zip 

# Remove anything that could be used to build new software. There may be other
# ways to get binaries into the container, but security is about making it hard
# to do the bad things 🙂
RUN apk del dpkg gcc g++ apk-tools

CMD ["php-fpm"]
