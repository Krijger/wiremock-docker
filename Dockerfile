FROM java:openjdk-8u111-jre

MAINTAINER Quinten Krijger

RUN mkdir /usr/lib/wiremock-standalone
COPY build/stackwork-deps/wiremock-standalone.jar /usr/lib/wiremock/

WORKDIR /root
RUN mkdir /root/mappings

LABEL wiremock.version="2.0.5"

EXPOSE 80
ENTRYPOINT ["java", "-jar", "/usr/lib/wiremock/wiremock-standalone.jar"]
CMD ["--port", "80"]
