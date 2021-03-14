FROM alpine:latest
RUN apk add --no-cache --update cntlm

EXPOSE 3128

ENTRYPOINT ["/usr/sbin/cntlm"]
CMD [ "-f" ]
