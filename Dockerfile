FROM alpine:3
CMD ["/script.sh"]
COPY script.sh /
RUN apk add -U --no-cache gnupg git