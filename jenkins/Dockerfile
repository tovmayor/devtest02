FROM ubuntu:20.04
RUN apt-get update

RUN apt=get install -y git
RUN apt-get install -y maven


# Install docker
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt-get update
RUN apt-get -y install docker-ce

# Clear cache
RUN apt-get clean


