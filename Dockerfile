FROM golang:1.20.3-alpine3.17

LABEL maintainer="Napadailo Yaroslav <experimental.rabbit.1986@gmail.com>"
LABEL desription="SIPexer image based on forked repository"
LABEL vcs-type="git"
LABEL vcs-url="https://github.com/man1207/sipexer.git"

COPY . /src

WORKDIR /src

RUN go get ./... \
    && go build .

RUN mv sipexer /usr/local/bin/sipexer

ENTRYPOINT ["sipexer"]

CMD ["--help"]
