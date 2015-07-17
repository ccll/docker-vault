FROM man:5000/alpine:3.2
# vault: https://github.com/hashicorp/vault/releases
ADD deps/vault-0.2.0 /usr/local/bin/vault
RUN chmod +x /usr/local/bin/vault
ENTRYPOINT ["/usr/local/bin/vault"]
