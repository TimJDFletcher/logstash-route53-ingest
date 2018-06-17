FROM docker.elastic.co/logstash/logstash:6.2.4
RUN rm /usr/share/logstash/pipeline/logstash.conf

RUN logstash-plugin install logstash-input-cloudwatch_logs

ADD pipeline /usr/share/logstash/pipeline
ADD config /usr/share/logstash/config
