FROM mcandre/docker-java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD jetty.sh /
RUN apt-get update && \
    apt-get install -y jetty
EXPOSE 8080
ENTRYPOINT /jetty.sh
