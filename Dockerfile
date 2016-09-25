FROM alpine
RUN apk add --update \
    bash \
    wget \
    openjdk8
RUN wget https://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-1.3.10-minimal.zip -O /tmp/activator.zip
RUN mkdir /opt && cd /opt && unzip /tmp/activator.zip && rm /tmp/activator.zip
RUN ln -s /opt/activator-1.3.10-minimal/bin/activator /bin/activator
RUN cd /root
RUN activator help; exit 0
