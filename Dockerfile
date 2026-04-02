FROM quay.io/keycloak/keycloak:latest

ENV KC_DB=dev-file
ENV KC_HOSTNAME_STRICT=false
ENV KC_HTTP_ENABLED=true

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start", "--http-port=8080"]
