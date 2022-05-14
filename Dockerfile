FROM golang:latest

ADD . $GOPATH/src/github.com/akhirachain/akhira-scan
ENV GO15VENDOREXPERIMENT=1
RUN cd $GOPATH/src/github.com/akhirachain/akhira-scan/src && go build -o /usr/bin/btisp-agent

EXPOSE 8545

ENTRYPOINT btisp-agent $0 $@