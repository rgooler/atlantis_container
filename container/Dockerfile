FROM runatlantis/atlantis:latest

ADD files/etc/* /etc/
ADD files/usr/local/bin/* /usr/local/bin/
RUN echo "==[Raising ulmits]==" && \
    mkdir /etc/security && \
    echo "*         hard    nofile      500000" >> /etc/security/limits.conf && \
    echo "*         soft    nofile      500000" >> /etc/security/limits.conf && \
    echo "root      hard    nofile      500000" >> /etc/security/limits.conf && \
    echo "root      soft    nofile      500000" >> /etc/security/limits.conf && \
    echo "==[chmod script]==" && \
    chmod +x /usr/local/bin/demo.sh


ENTRYPOINT ["entrypoint.sh"]