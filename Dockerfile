FROM alpine:3.11.3
MAINTAINER Topaz Tech Ltd <info@topaz.technology>

# Containerpilot
ENV CONTAINERPILOT_VERSION 3.8.0
ENV CONTAINERPILOT_RELEASES https://github.com/joyent/containerpilot/releases/download
ENV CONTAINERPILOT_CHECKSUM 84642c13683ddae6ccb63386e6160e8cb2439c26

RUN apk add --update --no-cache ca-certificates bind-tools curl bash jq

# Install Containerpilot
RUN \
  curl -Lso /tmp/containerpilot.tar.gz \
    "${CONTAINERPILOT_RELEASES}/${CONTAINERPILOT_VERSION}/containerpilot-${CONTAINERPILOT_VERSION}.tar.gz" && \
  echo "${CONTAINERPILOT_CHECKSUM}  /tmp/containerpilot.tar.gz" | sha1sum -c && \
  tar zxvf /tmp/containerpilot.tar.gz -C /usr/local/bin && \
  rm /tmp/containerpilot.tar.gz

COPY bin/ /usr/local/bin/
COPY containerpilot.json5 /etc/containerpilot.json5

ENV CONTAINERPILOT=/etc/containerpilot.json5

CMD ["/usr/local/bin/containerpilot"]
