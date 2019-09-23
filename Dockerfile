FROM ubuntu:18.04

# Update
RUN apt-get update && \
    apt-get dist-upgrade -y

# Install some tools
RUN apt-get install -y \
    curl \
    python \
    g++ \
    make \
    libpng-dev \
    autoconf \
    automake \
    libtool \
    nasm \
    build-essential \
    pkg-config

# Install NodeJS
RUN curl -sL curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install nodejs \
    && nodejs -v

CMD [ "node" ]
