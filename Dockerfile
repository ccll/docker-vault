FROM alpine:3.2

RUN apk --update add curl && \
    rm -rf /var/cache/apk/*

ADD https://github.com/hashicorp/vault/releases/download/v0.2.0.rc1/linux_amd64.zip /tmp/vault.zip
RUN cd /tmp && unzip vault.zip && mv vault /usr/local/bin/ && rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/vault"]
