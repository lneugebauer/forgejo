FROM codeberg.org/forgejo/forgejo:15.0.2

RUN apk update && \
    apk add ruby ruby-dev build-base && \
    gem install asciidoctor --no-document && \
    apk del ruby-dev build-base
