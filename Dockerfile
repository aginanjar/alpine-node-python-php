FROM alpine:latest

# Install Node.js, Python, and PHP
RUN apk update && \
    apk add --no-cache nodejs npm python3 py3-pip php

# Clean up
RUN rm -rf /var/cache/apk/*

CMD ["sh"]