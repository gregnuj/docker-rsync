FROM alpine:latest

LABEL MAINTAINER="Greg Junge <gregnuj@gmail.com>"

RUN apk --no-cache add bash socat openssh-client rsync

SHELL ["/bin/bash"]
CMD ["rsync"]
