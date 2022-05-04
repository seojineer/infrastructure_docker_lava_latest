FROM lavasoftware/amd64-lava-server:latest

# Not using proxy
RUN sed -i 's/ProxyPreserveHost On/ProxyPreserveHost Off/' /etc/apache2/sites-available/lava-server.conf

# Enable login on localhost
RUN echo '"CSRF_COOKIE_SECURE": false' >> /etc/lava-server/settings.conf
RUN echo '"SESSION_COOKIE_SECURE": false' >> /etc/lava-server/settings.conf
# Enable event notification
RUN echo '"EVENT_TOPIC": "localhost.lava"' >> /etc/lava-server/settings.conf
RUN echo '"EVENT_NOTIFICATION": true' >> /etc/lava-server/settings.conf

COPY create_admin.sh /root/create_admin.sh
#CMD /root/create_admin.sh

EXPOSE 69 80 5555 5556 5432 8000 5500
