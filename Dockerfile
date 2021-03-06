FROM java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY start-jetty /
RUN apt-get update && \
    apt-get install -y jetty8
EXPOSE 8080
ENTRYPOINT ["/start-jetty"]
