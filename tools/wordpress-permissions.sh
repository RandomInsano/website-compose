#/bin/sh

chmod -R 644 *
chown -R root:root *
find -type d | xargs -I {} chmod +x {}
chown -R 82:82 wp-content/

