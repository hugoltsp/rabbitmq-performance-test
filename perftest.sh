#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Missing routing key"
    exit 1
  else
    # shellcheck disable=SC2124
    rk=$@
fi

docker run --network rabbitmq-performance-test_default \
 --rm -it pivotalrabbitmq/perf-test:2.16.0 \
 --consumers 0 \
 --json-body \
 --size 2000 \
 --producers 4 \
 --predeclared \
 --exchange my-exchange \
 --routing-key $rk \
 --uri 'amqp://hugoltsp:hugoltsp@nginxrmq:5000'