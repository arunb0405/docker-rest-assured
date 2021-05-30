FROM ubuntu:16.04
RUN apt-get update
RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  git \
  maven 

RUN mvn -version
RUN git clone https://github.com/arunb0405/rest-assured.git
RUN cd Rest-Assured
CMD ls
CMD ls
RUN mvn clean install test
