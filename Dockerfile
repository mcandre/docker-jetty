FROM java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY jetty.sh /
RUN apt-get update && \
    apt-get install -y jetty8
EXPOSE 8080
ENTRYPOINT ["/jetty.sh"]
