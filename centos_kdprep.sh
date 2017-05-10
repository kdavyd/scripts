#!/bin/bash

yum install -y nano perf
mkdir ~/cosbench && cd ~/cosbench && wget https://github.com/intel-cloud/cosbench/releases/download/v0.4.2.c4/0.4.2.c4.zip && unzip 0.4.2.c4.zip
chmod +x 0.4.2.c4/start-all.sh 
chmod +x 0.4.2.c4/stop-all.sh
