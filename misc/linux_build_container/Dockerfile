# syntax=docker/dockerfile:1
FROM ubuntu:22.04
WORKDIR .
RUN apt-get update -y
RUN apt-get install -y \
  build-essential \
  scons \
  pkg-config \
  libx11-dev \
  libxcursor-dev \
  libxinerama-dev \
  libgl1-mesa-dev \
  libglu1-mesa-dev \
  libasound2-dev \
  libpulse-dev \
  libudev-dev \
  libxi-dev \
  libxrandr-dev \
  libwayland-dev \
  python3 \
  python3-pip \
  mingw-w64
RUN pip3 install scons

CMD ["/engine_src/misc/linux_build_container/build.sh"]
