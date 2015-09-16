FROM java:openjdk-8u66-jre

MAINTAINER Quinten Krijger

RUN mkdir /usr/lib/wiremock
RUN curl https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/1.56/wiremock-1.56-standalone.jar --output /usr/lib/wiremock/wiremock-standalone.jar

WORKDIR /root
RUN mkdir /root/mappings

LABEL wiremock.version="1.56"

EXPOSE 80
ENTRYPOINT ["java", "-jar", "/usr/lib/wiremock/wiremock-standalone.jar"]
CMD ["--port", "80"]

