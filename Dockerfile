# Pull base image.
FROM ubuntu:12.10

# Update OS.
RUN apt-get update
RUN apt-get upgrade -y

# Install basic packages.
RUN apt-get install -y software-properties-common
RUN apt-get install -y curl git htop unzip vim wget

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/scripts /root/scripts

# Set working directory.
ENV HOME /root
WORKDIR /root
