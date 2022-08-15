FROM ubuntu:20.04
RUN apt update
RUN apt install -y wget
RUN apt install -y maven
RUN apt install openjdk-11-jre-headless

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
&& tar xvfz apache-tomcat-9.0.65.tar.gz \
&& mkdir -p /usr/local/tomcat9 \
&& mv ./apache-tomcat-9.0.65/* /usr/local/tomcat9 \
&& apt-get install -y git \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello \
&& cd boxfuse-sample-java-war-hello \
&& mvn package \
&& cp target/hello-1.0.war /usr/local/tomcat9/webapps

EXPOSE 8080
CMD ["/usr/local/tomcat9/bin/catalina.sh", "run"]



