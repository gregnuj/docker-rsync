FROM alpine:latest

LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"

RUN apk --no-cache add bash socat openssh-client rsync

SHELL ["/bin/bash"]
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["rsync"]
