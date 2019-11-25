#!/bin/bash

mkdir -p /opt/certbot
wget https://dl.eff.org/certbot-auto -O /opt/certbot/certbot-auto
chmod a+x /opt/certbot/certbot-auto
/opt/certbot/certbot-auto certonly --debug --non-interactive --email devin.wright@neocova.com --agree-tos --standalone -d finmosis.net --keep-until-expiring
openssl pkcs12 -export -in /etc/letsencrypt/live/finmosis.net/cert.pem -inkey /etc/letsencrypt/live/finmosis.net/privkey.pem -out /usr/share/tomcat -name tomcat -CAfile /etc/letsencrypt/live/finmosis.net/chain.pem -caname root -passout pass:password

catalina.sh run 
