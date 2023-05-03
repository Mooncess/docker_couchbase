FROM couchbase:community-6.6.0

ENV COUCHBASE_ADMIN_USERNAME=admin
ENV COUCHBASE_ADMIN_PASSWORD=passw0rd

COPY configure-node.sh /opt/couchbase

RUN chmod +x /opt/couchbase/configure-node.sh

CMD ["/opt/couchbase/configure-node.sh"]