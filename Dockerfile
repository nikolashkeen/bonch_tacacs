FROM ubuntu:18.04
RUN apt-get update && apt-get install -y tacacs+
ADD tac_plus.conf /etc/tacacs+/tac_plus.conf
EXPOSE 49
ENTRYPOINT /usr/sbin/tac_plus -G -t -C /etc/tacacs+/tac_plus.conf
