#!/usr/bin/env bash
set -e

# export environment variables
export $(cat /home/ubuntu/.env | xargs)

# create nginx upstream
rm -rf \
  /etc/nginx/sites-available/default \
  /etc/nginx/sites-enabled/default

  cat > /etc/nginx/sites-available/${APP_NAME}.conf <<EOF
server {
  server_name   ${APP_DOMAIN};

  location / {
    proxy_pass             http://127.0.0.1:${APP_PORT};
    proxy_read_timeout     60;
    proxy_connect_timeout  60;
    proxy_redirect         off;

    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_cache_bypass \$http_upgrade;
  }
}
EOF

ln -s /etc/nginx/sites-available/${APP_NAME}.conf /etc/nginx/sites-enabled/
systemctl restart nginx
