# logstash-cloudtrail-ingest

Container to collect logs from AWS, currently uses the AWS account: `arn:aws:iam::308867920639:user/svc-logstash-reader`

Uses 2 inputs, s3 to read cloudtrail logs via the cloudtrail codec and cloudwatch logs to read in route53 logs.

Stores files in /data recording the current point that the container is up to in the processing of the logs

- https://github.com/logstash-plugins/logstash-input-s3
- https://github.com/logstash-plugins/logstash-codec-cloudtrail
- https://github.com/lukewaite/logstash-input-cloudwatch-logs

