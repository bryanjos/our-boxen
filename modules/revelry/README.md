## SSL config

After running the boxen command, there is still work to do

1. `cp /opt/boxen/config/nginx/nginx.conf /opt/boxen/config/nginx/nginx.conf.orig`
2. `cp /opt/boxen/config/nginx/nginx.conf.ssl /opt/boxen/config/nginx/nginx.conf`
3. make sure the site that needs ssl support has a `/opts/boxen/config/nginx/sites/<appname>.conf` that matches the example at `/opt/boxen/config/nginx/sites/ssl-site-example.conf`
4. `boxen --restart-service nginx`
