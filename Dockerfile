FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y maven \
&& apt-get install -y tomcat9 \
&& apt-get install -y git \
&& git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello \
&& cd boxfuse-sample-java-war-hello \
&& mvn package \
&& cp target/hello-1.0.war /var/lib/tomcat9/webapps
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 8080
CMD ["catalina.sh", "run"]

#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


