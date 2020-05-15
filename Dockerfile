# Based on JDK 11, as I think that is the most recent version which works with FTB Omnia and I'm assuming that more recent versions of Java have better optimizations
FROM openjdk:11
LABEL maintainer="matthew@wolfie.ovh"
# Make sure we have jq for JSON parsing
RUN apt-get update
RUN apt-get install jq -y

WORKDIR /usr/src/ftbomnia
COPY install.sh .
RUN chmod +x install.sh
# If the user does not provide a version, target the lastest.
ENV VERSION=LATEST
ENTRYPOINT [ "bash", "install.sh" ]