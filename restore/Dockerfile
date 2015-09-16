FROM alpine:3.2

RUN apk add --update \
    ca-certificates \
    bash \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*



RUN pip install --upgrade pip
RUN pip install awscli
ADD ./s3-restore /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/s3-restore"]
