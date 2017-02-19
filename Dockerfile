## -*- docker-image-name: "dshmelev/scaleway-kubernetes" -*-
FROM scaleway/ubuntu:amd64-16.04
MAINTAINER Dmitry Shmelev <avikez@gmail.com>

# Prepare rootfs for image-builder.
RUN /usr/local/sbin/builder-enter

# Install docker dependencies & upgrade system
RUN apt-get -q update \
	&& apt-get -y -qq upgrade \
	&& apt-get install -y -q \
        docker \
	&& apt-get clean

# Install docker
RUN curl -L https://get.docker.com/ | sh

# Add local files into the root
COPY ./rootfs/ /

# Run services
RUN systemctl enable docker

# Clean rootfs from image-builder.
RUN /usr/local/sbin/builder-leave
