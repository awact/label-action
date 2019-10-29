FROM debian:9.6-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl \
    jq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]