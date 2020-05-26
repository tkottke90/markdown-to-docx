# Container image that runs your code
FROM debian:10

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install pandoc -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

WORKDIR /usr/app

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]