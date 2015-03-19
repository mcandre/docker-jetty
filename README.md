# docker-jetty - a Docker container running a continuous Jetty server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-jetty/

# EXAMPLE

```
$ make
docker ps -a | grep -v IMAGE | awk '{ print $1 }' | xargs docker rm -f
45229f5d4861
docker build -t mcandre/docker-jetty .
Sending build context to Docker daemon 7.168 kB
Sending build context to Docker daemon 
Step 0 : FROM ubuntu:12.04
 ---> 1f80e9ca2ac3
Step 1 : MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
 ---> Using cache
 ---> b6e3d5225a21
Step 2 : ENV DEBIAN_FRONTEND noninteractive
 ---> Using cache
 ---> e5a1d048a175
Step 3 : RUN apt-get update -y
 ---> Using cache
 ---> ef0918018c79
Step 4 : RUN apt-get install -y python-software-properties
 ---> Using cache
 ---> 4fd1c7f4d353
Step 5 : RUN add-apt-repository ppa:webupd8team/java
 ---> Using cache
 ---> 9f7b865fd68b
Step 6 : RUN apt-get update -y
 ---> Using cache
 ---> 5e563e97a7c8
Step 7 : RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
 ---> Using cache
 ---> 396db130f6f1
Step 8 : RUN apt-get install -y oracle-java7-installer ca-certificates
 ---> Using cache
 ---> 49a339381bf0
Step 9 : RUN apt-get install -y jetty
 ---> Using cache
 ---> c2a4d27bb352
Step 10 : EXPOSE 8080
 ---> Using cache
 ---> 31e1be26015d
Step 11 : ADD jetty.sh /
 ---> Using cache
 ---> 3473198deddb
Step 12 : ENTRYPOINT /jetty.sh
 ---> Using cache
 ---> 888ba29a7443
Successfully built 888ba29a7443
docker run -d -p 8080:8080 mcandre/docker-jetty
0017ce21a070abf443877382176a943f0d28ef31d46636d94576369629bf0d80
sleep 2
time curl -s http://$(boot2docker ip):8080
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Error 404 NOT_FOUND</title>
</head>
<body>
<h2>HTTP ERROR: 404</h2>
<p>Problem accessing /. Reason:
<pre>    NOT_FOUND</pre></p>
<hr /><i><small>Powered by Jetty://</small></i>
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
</body>
</html>

real	0m0.227s
user	0m0.039s
sys	0m0.038s
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io curl build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io curl
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker curl
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker curl make
```
