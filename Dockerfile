FROM alpine:3.18
RUN apk add openssh-client lftp
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
