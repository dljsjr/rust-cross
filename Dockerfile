FROM rustembedded/cross:aarch64-unknown-linux-gnu-0.2.1

RUN apt-get update
RUN dpkg --add-architecture arm64 && \
    apt-get update && \ 
    apt-get install --assume-yes libudev-dev:arm64

ENV PKG_CONFIG_LIBDIR_aarch64_unknown_linux_gnu=/usr/lib/aarch64-linux-gnu/pkgconfig
