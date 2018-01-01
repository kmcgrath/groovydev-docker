FROM ubuntu:xenial

# vim and janus
RUN apt-get update && apt-get install -y \
  vim \
  rake \
  curl \
  git \
  bash \
  jq \
  && curl -L https://bit.ly/janus-bootstrap | bash \
  && mkdir /code \
  && mkdir ~/.janus \
  && cd ~/.janus && git clone https://github.com/vim-scripts/groovyindent-unix.git

# SDKMAN
RUN curl -s get.sdkman.io | bash \
    && bash -c ". $HOME/.sdkman/bin/sdkman-init.sh \
      && sdk install java \
      && sdk install gradle \
      && sdk install groovy"

ADD scripts/entry.sh /scripts/entry.sh

WORKDIR /code

ENTRYPOINT ["/scripts/entry.sh"]

CMD ["bash"]
