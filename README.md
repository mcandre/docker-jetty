# docker-jetty - a Docker container running a continuous Jetty server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-jetty/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-jetty .
docker run -d -p 8080:8080 mcandre/docker-jetty
0017ce21a070abf443877382176a943f0d28ef31d46636d94576369629bf0d80
sleep 2
time curl -s http://$(boot2docker ip):8080 | head
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
