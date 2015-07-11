FROM man:5000/alpine:3.2
# vault: https://github.com/hashicorp/vault/releases
ADD deps/vault-0.2.0.rc1.zip /tmp/vault.zip
RUN cd /usr/local/bin/ && unzip /tmp/vault.zip && rm -rf /tmp/*
ENTRYPOINT ["/usr/local/bin/vault"]
