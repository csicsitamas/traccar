FROM openjdk:17-jdk-slim

WORKDIR /opt/traccar
RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/traccar/traccar/releases/download/v5.13/traccar-other-5.13.zip \
    && unzip traccar-other-5.13.zip \
    && rm traccar-other-5.13.zip

EXPOSE 8082

CMD ["java", "-jar", "tracker-server.jar", "conf/traccar.xml"]
