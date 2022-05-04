FROM lavasoftware/amd64-lava-server:latest

# Not using proxy
RUN sed -i 's/ProxyPreserveHost On/ProxyPreserveHost Off/' /etc/apache2/sites-available/lava-server.conf

# Enable Login on localhost
RUN echo '"CSRF_COOKIE_SECURE": false' >> /etc/lava-server/settings.conf
RUN echo '"SESSION_COOKIE_SECURE": false' >> /etc/lava-server/settings.conf

COPY create_admin.sh /root/create_admin.sh
#CMD /root/create_admin.sh
