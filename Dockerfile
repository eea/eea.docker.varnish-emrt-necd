FROM alpine:edge
MAINTAINER "EEA: IDM2 C-TEAM" <eea-edw-c-team-alerts@googlegroups.com>

# Add script that starts varnish.
ADD docker-entrypoint.sh /docker-entrypoint.sh

# Update the package repository and install varnish.
RUN apk --no-cache --update add varnish \
 && rm -rf /tmp/* && rm -rf /var/cache/apk/* \
 && chmod 755 /docker-entrypoint.sh

# Make our default VCL available on the container.
ADD varnish.vcl /etc/varnish/default.vcl

# Configure the backend.
ENV VARNISH_BACKEND_PORT 5000
ENV VARNISH_BACKEND_HOST 127.0.0.1
ENV VARNISH_MEMORY 100M

# Expose HTTP port
EXPOSE 80

ENTRYPOINT ["./docker-entrypoint.sh"]
