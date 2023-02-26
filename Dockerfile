FROM almir/webhook:2.8.0

RUN apk add --no-cache curl

ADD hooks.yaml /etc/webhook/hooks.yaml
ADD pass.sh /var/webhook/pass.sh

EXPOSE 9000

ENTRYPOINT webhook -verbose -hooks /etc/webhook/hooks.yaml