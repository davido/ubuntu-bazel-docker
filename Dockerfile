FROM ubuntu:rolling

RUN apt update && apt upgrade -y && apt autoremove -y

RUN DEBIAN_FRONTEND=noninteractive apt install tzdata
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y \
  curl \
  findutils \
  g++ \
  gcc \
  git-core \
  openjdk-11-jdk \
  patch \
  perl \
  python3 \
  python-is-python3 \
  unzip \
  vim \
  wget \
  zip
