FROM ubuntu:24.04

RUN apt-get update

# Add man, build-essential, gdb, valgrind, vim, pkg-config, less, and tmux to the image.

RUN apt-get install -y man \
                        build-essential \
                        gdb \
                        valgrind \
                        vim \
                        pkg-config \
                        less \
                        tmux

RUN apt-get clean


RUN useradd --user-group --create-home --shell /bin/bash user
USER user
RUN mkdir -p /home/user/workspace
WORKDIR /home/user/workspace
CMD bash