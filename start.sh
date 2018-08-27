#!/bin/sh

cat > /etc/nginx/sites-enabled/host <<EOF
server {
  listen 80;


location / {
    root /var/www/html;
    try_files \$uri @proxy;

    expires max;
    access_log off;
  }

  location @proxy {
    proxy_pass $UPSTREAM;
    proxy_set_header Host \$host;
    proxy_set_header X-Real-IP \$remote_addr;
    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto \$scheme;
  }
}
EOF

nginx -g "daemon off;"
