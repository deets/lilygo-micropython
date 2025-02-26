FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       apt-utils \
       build-essential \
       git make python3 python3-pip cmake quilt \
       locales \
       libffi-dev \
       libssl-dev \
       libyaml-dev \
    python3-dev \
       libusb-1.0-0-dev \
       python3-setuptools \
       python3-pip 

# Fix potential UTF-8 errors with ansible-test.
RUN locale-gen en_US.UTF-8



