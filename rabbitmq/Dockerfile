FROM rabbitmq:3.9.7-management-alpine
COPY rabbitmq-custom.conf /etc/rabbitmq/rabbitmq-custom.conf
COPY definitions-custom.json /etc/rabbitmq/definitions-custom.json
COPY --chown=root .erlang.cookie /var/lib/rabbitmq/.erlang.cookie
RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie