#  Logging level
log4j.rootLogger={{getv "/solr/root/logger"}}, stdout

# add a ConsoleAppender to the logger stdout to write to the console
log4j.appender.stdout=org.apache.log4j.ConsoleAppender
log4j.appender.stdout.layout=org.apache.log4j.PatternLayout
# use a simple message format
log4j.appender.stdout.layout.ConversionPattern=%-5p - %d{yyyy-MM-dd HH:mm:ss.SSS}; %C; %m\n

log4j.logger.org.apache.zookeeper={{getv "/solr/org/apache/zookeeper/log"}}
log4j.logger.org.apache.hadoop={{getv "/solr/org/apache/hadoop/log"}}

# set to INFO to enable infostream log messages
log4j.logger.org.apache.solr.update.LoggingInfoStream={{getv "/solr/org/apache/solr/update/logginginforstream"}}