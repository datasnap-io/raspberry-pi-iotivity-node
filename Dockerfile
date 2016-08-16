FROM hypriot/rpi-node:argon

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y  scons \
                        build-essential \
                        libboost-dev \
                        libexpat1-dev \
                        libboost-program-options-dev \
                        libboost-thread-dev \
                        git \
                        uuid-dev \
                        unzip

RUN git clone https://github.com/datasnap-io/iotivity-node.git -b raspberry-pi-build
WORKDIR iotivity-node
RUN npm install --unsafe-perm
RUN npm link

