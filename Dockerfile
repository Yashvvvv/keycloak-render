FROM quay.io/keycloak/keycloak:latest

ENV KC_DB=dev-file
ENV KC_HOSTNAME_STRICT=false
ENV KC_HTTP_ENABLED=true

# memory fix
ENV JAVA_OPTS="-Xms128m -Xmx256m"

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["/opt/keycloak/bin/kc.sh start --http-port=${PORT:-8080}"]