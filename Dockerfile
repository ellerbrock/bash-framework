FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN \
  adduser -h /app -s /bin/bash -u 1000 -D app && \
  apk add --no-cache \
    bash \
    bash-completion \
    bash-doc \
    git && \
  git clone https://github.com/ellerbrock/bash-framework.git /app/bash-framework && \
  sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd && \
  rm -rf /var/cache/apkc/*

COPY ./dotfiles /app
COPY ./dotfiles /root

RUN chown -R app:app /app

USER app

WORKDIR /app/bash-framework

ENTRYPOINT [ "bash" ]
