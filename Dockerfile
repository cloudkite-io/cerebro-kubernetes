FROM openjdk:8-jre

ENV CEREBRO_VERSION 0.6.6
RUN wget -qO- cerebro-${CEREBRO_VERSION}.tgz https://github.com/lmenezes/cerebro/releases/download/v${CEREBRO_VERSION}/cerebro-${CEREBRO_VERSION}.tgz | \
      tar --transform "s/^cerebro-${CEREBRO_VERSION}/cerebro/" -zxv -C /opt \
    && chown nobody:nogroup -R /opt/cerebro

COPY start.sh /start.sh
WORKDIR /opt/cerebro
USER nobody
CMD ["/start.sh"]
