FROM ubuntu:18.04
RUN apt update \
&& apt install -y maven \
&& apt install -y git
WORKDIR /home/compile
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /home/compile/boxfuse-sample-java-war-hello
#VOLUME /home/compile/boxfuse-sample-java-war-hello
RUN mvn package
CMD ["/bin/bash"]