#!/usr/bin/env sh

JETTY_HOME=/usr/share/jetty8
LOGDIR=/var/log/jetty8

/usr/bin/java -Djetty.home=$JETTY_HOME -Djetty.base=$JETTY_HOME -Djetty.logs=$LOGDIR -jar $JETTY_HOME/start.jar
