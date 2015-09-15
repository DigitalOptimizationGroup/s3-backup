FROM gliderlabs/alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*



RUN pip install awscli
ADD ./s3-backup /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/s3-backup"]
