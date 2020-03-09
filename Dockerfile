FROM alpine:3
CMD ["./script.sh"]

RUN apk add -U --no-cache gnupg git \
    && addgroup -S git \
    && adduser -S git -h /app -G git git

USER git
WORKDIR /app

COPY script.sh /app/