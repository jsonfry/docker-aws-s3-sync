FROM alpine:3.7

RUN apk --no-cache add \
      py-pip \
      python &&\
    pip install --upgrade \
      pip \
      awscli

VOLUME ["/data"]

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
