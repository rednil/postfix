FROM phusion/baseimage:0.9.16
MAINTAINER Christian Linder <rednil@onyown.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && apt-get upgrade -y 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y postfix mailutils
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bind9
ADD filesystem /
RUN build.sh

CMD ["/sbin/my_init"]
