#!/bin/bash
mkdir /usr/src/testgo
cd /usr/src/testgo
git clone https://github.com/achendev/testgo.git ./
docker rmi testgo -f  &>/dev/null
docker image build -t testgo:latest .
docker run -it --rm testgo:latest
