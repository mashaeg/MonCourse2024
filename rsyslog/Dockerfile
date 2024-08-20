FROM ubuntu:22.04
RUN apt-get update && apt-get install -y rsyslog
COPY rsyslog.conf /etc/rsyslog.conf
COPY rsyslog.d/ /etc/rsyslog.d/
CMD ["rsyslogd", "-n"]