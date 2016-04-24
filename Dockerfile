FROM centos:centos7
MAINTAINER Ashley Williams [abitvolatile.com]


COPY rest-app.py /opt/rest-app.py
COPY .secrets.txt /opt/.secrets.txt
COPY entrypoint /
COPY README.md /

EXPOSE 8500

WORKDIR /opt

RUN [ "yum", "install", "-y", "python-virtualenv", "python-pip" ]
RUN [ "virtualenv", "flask" ]
RUN [ "flask/bin/pip", "install", "flask" ]
RUN [ "flask/bin/pip", "install", "flask-httpauth" ]

WORKDIR /

ENTRYPOINT ["/entrypoint"]
