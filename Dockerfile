FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y maven
RUN apt-get install -y wget2

#ENV CATALINA_HOME /usr/local/tomcat9
#ENV PATH $CATALINA_HOME/bin:$PATH
#WORKDIR $CATALINA_HOME
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz \
&& tar xvfz apache-tomcat-9.0.65.tar.gz \
&& mkdir -p /usr/local/tomcat9 \
&& mv ./apache-tomcat-9.0.65/* /usr/local/tomcat9 \
&& apt-get install -y git \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello \
&& cd boxfuse-sample-java-war-hello \
&& mvn package \
&& cp target/hello-1.0.war /usr/local/tomcat9/webapps

#ENV PATH=/usr/share/tomcat9/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 8080
CMD ["/usr/local/tomcat9/bin/catalina.sh", "run"]

#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


