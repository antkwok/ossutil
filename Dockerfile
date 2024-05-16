FROM alpine:latest

# Set working directory
WORKDIR /tmp

RUN apk --update add openssl wget unzip && rm -rf /var/cache/apk/*


COPY docker/ossutil-v1.7.19-linux-amd64.zip "/tmp/ossutil.zip"
RUN unzip ossutil.zip
RUN mv /tmp/ossutil-v1.7.19-linux-amd64/ossutil* /usr/local/bin/

WORKDIR /root
