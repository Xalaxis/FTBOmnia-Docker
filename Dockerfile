# Based on JDK 11, as I think that is the most recent version which works and I'm assuming that more recent versions of Java have better optimizations
FROM openjdk:11
WORKDIR /usr/src/ftbomnia
COPY install.sh .
RUN chmod +x install.sh
#RUN yes y | /serverinstall_6_46
#RUN echo "eula=true" > eula.txt
#ENTRYPOINT [ "java", "-server", "-XX:+UseG1GC", "-XX:+UnlockExperimentalVMOptions", "-Xmx8092M", "-Xms3072M", "-jar", "forge-1.15.2-31.1.36.jar", "nogui" ]
ENTRYPOINT [ "bash", "install.sh" ]
LABEL maintainer="matthew@wolfie.ovh"
LABEL description="FTB Omnia Server"
LABEL version="1.1.0"