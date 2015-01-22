FROM ubuntu:14.04
MAINTAINER Loic Talon loic.talon@tabmo.fr

RUN apt-get update
RUN apt-get install python gcc python-dev git wget -y

RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:ansible/ansible -y
RUN apt-get update
RUN apt-get install ansible -y

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py


RUN pip install markupsafe
RUN pip install paramiko
RUN pip install ecdsa
RUN pip install pycrypto

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["bash", "/usr/local/bin/run"]
