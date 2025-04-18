FROM codeberg.org/forgejo/forgejo:11

RUN apk update && \
    apk add ruby ruby-dev build-base && \
    gem install asciidoctor --no-document && \
    apk del ruby-dev build-base
