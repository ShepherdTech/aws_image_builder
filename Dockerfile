FROM alpine:latest
RUN apk add bash
RUN apk add aws-cli 
RUN apk add npm
RUN npm install -g aws-cdk -y
COPY ./creds.sh /root/creds.sh
RUN chmod +x /root/creds.sh
ENTRYPOINT ["/root/creds.sh"]
CMD ["tail", "-f", "/dev/null"]
