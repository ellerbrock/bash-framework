FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN \
  adduser -h /app -s /bin/bash -u 1000 -D app && \
  apk add --no-cache \
    atop \
    bash \
    bash-completion \
    bash-doc \
    ca-certificates \
    curl \
    dialog \
    git \
    gnupg \
    htop \
    nmap \
    openssh \
    sudo \
    vim \
    wget \
    zip && \
  update-ca-certificates && \
  sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd && \
  rm -rf /var/cache/apkc/*

COPY ./dotfiles /app
COPY ./dotfiles /root
COPY . /app/bash-framework

USER app
WORKDIR /app/bash-framework

ENTRYPOINT [ "bash" ]
