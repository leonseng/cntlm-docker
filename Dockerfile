FROM debian:buster-slim
RUN apt-get update && \
 apt-get upgrade -y

RUN apt-get install cntlm -y

EXPOSE 3128

ENTRYPOINT ["/usr/sbin/cntlm"]
CMD [ "-f" ]
