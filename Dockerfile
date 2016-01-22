FROM neam/plantuml-server
MAINTAINER tukiyo3 <tukiyo3@gmail.com>

# Make japanese fonts available
RUN \
  apt-get update &&\
  apt-get install -y fonts-takao &&\
  apt-get clean &&\
  apt-get autoremove -y &&\
  rm -rf /var/cache/apt/*

# Prevent startup taking minutes (http://wiki.apache.org/tomcat/HowTo/FasterStartUp, http://stackoverflow.com/questions/26431922/tomcat7-starts-too-late-on-ubuntu-14-04-x64-digitalocean)
RUN sed -i 's|securerandom.source=file:/dev/urandom|securerandom.source=file:/dev/./urandom|' $JAVA_PATH/jre/lib/security/java.security
