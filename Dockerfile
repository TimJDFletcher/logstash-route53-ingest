FROM docker.elastic.co/logstash/logstash:6.2.4

RUN logstash-plugin install logstash-input-cloudwatch_logs
RUN rm /usr/share/logstash/pipeline/logstash.conf

COPY config /usr/share/logstash/pipeline

ADD logstash.yml /usr/share/logstash/config/logstash.yml
