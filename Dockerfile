FROM ubuntu:14.04

ADD http://www.msextra.com/tools/s12buildtools-linux32bit-2012-10-24.tar.gz /s12buildtools.tar.gz

RUN tar xf s12buildtools.tar.gz
RUN tar xf /s12buildtools-linux32bit-2012-10-24/tools.tar.gz

RUN apt-get update
RUN dpkg --add-architecture i386 && \
    apt-get update --fix-missing && \
    apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386
RUN apt-get install -y build-essential lib32z1

ADD entrypoint.sh /entrypoint.sh
WORKDIR /build

CMD /entrypoint.sh

