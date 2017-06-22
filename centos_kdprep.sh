#!/bin/bash

yum install epel-release -y
yum install -y pssh atop mosh cloud-utils-growpart python-pip wget tmux nano perf lsscsi screen expect expect-devel papi-devel   
pip install --upgrade --user awscli
ln -s /root/.local/bin/aws /usr/bin
mkdir ~/cosbench && cd ~/cosbench && wget https://github.com/intel-cloud/cosbench/releases/download/v0.4.2.c4/0.4.2.c4.zip && unzip 0.4.2.c4.zip
chmod +x 0.4.2.c4/start-all.sh
chmod +x 0.4.2.c4/start-driver.sh
chmod +x 0.4.2.c4/start-controller.sh
chmod +x 0.4.2.c4/stop-all.sh
cd && git clone https://github.com/FeCastle/tiptop.git && ./configure && make && make install clean && cd
