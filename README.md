# aws_image_builder

This is to make containers for our aws-cli and aws-cdk


The idea for now is to use this with docker cp to get the code in but eventually once the code smooths out then we can use git to get the code into the container and have a runtime inside of it Mybae iwth the cred.sh file

HOWTOUSE:

docker build . --tag thing:latest

docker run -d -v YOU_CREDS.csv:/root/aws.csv --name=container_name thing:latest

docker exec -it container_name /bin/bash

env #<--- and you should see  aws keys
