FROM madiedinro/caddy-ccf

ENV ACME_AGREE="false"
ENV ENABLE_TELEMETRY="false"
ENV CADDY_DOCKER_CADDYFILE_PATH=/etc/Caddyfile

EXPOSE 8080

WORKDIR /srv

VOLUME /root/.caddy /srv

ADD Caddyfile /etc/Caddyfile

ENTRYPOINT ["/bin/parent", "caddy"]
CMD ["--conf", "/etc/Caddyfile", "-log", "stdout", "--agree=$ACME_AGREE"]
