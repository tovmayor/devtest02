FROM maven:latest
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR ./boxfuse-sample-java-war-hello
RUN mvn package
