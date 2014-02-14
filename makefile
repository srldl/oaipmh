all: clean oaipmh

deps:
	go get 'github.com/moovweb/gokogiri'
	go get 'github.com/lmika/command'

clean:
	-rm oaipmh

oaipmh: src/*.go
	( cd src ; go build -o ../oaipmh )
