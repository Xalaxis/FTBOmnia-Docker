# Based on JDK 11, as I think that is the most recent version which works with FTB Omnia and I'm assuming that more recent versions of Java have better optimizations
FROM openjdk:11
LABEL maintainer="matthew@wolfie.ovh"

WORKDIR /usr/src/ftbomnia
COPY install.sh .
RUN chmod +x install.sh
ENTRYPOINT [ "bash", "install.sh" ]