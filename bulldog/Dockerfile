FROM ubuntu:latest
MAINTAINER Konrad Kühne <konrad.kuehne@rocketmail.com>

# Update the APT cache
RUN apt-get   update

# Install and setup project dependencies
RUN apt-get install -y curl git wget unzip

# fix wget
RUN export HTTP_CLIENT="wget --no-check-certificate -O"

# prepare for Java download
RUN apt-get install -y software-properties-common
RUN apt-get -y install openjdk-7-jre-headless
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# grab leiningen
RUN wget https://raw.github.com/technomancy/leiningen/stable/bin/lein -O /usr/local/bin/lein
RUN chmod +x /usr/local/bin/lein
ENV LEIN_ROOT yes
RUN lein

RUN ifconfig

ADD ./opt /opt

# Get the project
RUN git clone https://github.com/kordano/bulldog.git /opt/bulldog

CMD ["opt/start.sh"]
