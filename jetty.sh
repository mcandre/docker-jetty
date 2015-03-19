#!/usr/bin/env bash

JETTY_HOME=/usr/share/jetty

/usr/bin/java -Djetty.home=$JETTY_HOME -Djetty.base=$JETTY_HOME -jar $JETTY_HOME/start.jar
