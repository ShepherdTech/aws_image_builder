FROM alpine:latest
RUN apk add bash
RUN apk add aws-cli 
RUN apk add npm
RUN apk add py3-pip
RUN npm install -g aws-cdk -y
RUN pip3 install aws-cdk-lib constructs pytest --break-system-packages

COPY ./creds.sh /root/creds.sh
RUN chmod +x /root/creds.sh
ENTRYPOINT ["/root/creds.sh"]
CMD ["tail", "-f", "/dev/null"]
