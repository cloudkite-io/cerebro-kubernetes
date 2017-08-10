#!/bin/bash

exec /opt/cerebro/bin/cerebro \
  -Dhttp.port=${PORT:-9000} \
  -Dhttp.address=${BIND_HOST:-0.0.0.0} \
  -Dconfig.file=${CONFIG_PATH:-/opt/cerebro/conf/application.conf}
