#  Logging level
log4j.rootCategory={{getv "/solr/root/logger"}},console
log4j.appender.console=org.apache.log4j.ConsoleAppender
log4j.appender.console.target=System.out
log4j.appender.console.immediateFlush=true
log4j.appender.console.encoding=UTF-8
  
log4j.appender.console.layout=org.apache.log4j.PatternLayout
log4j.appender.console.layout.conversionPattern=%-5p - %d{yyyy-MM-dd HH:mm:ss.SSS}; %C; %m\n

log4j.logger.org.apache.zookeeper={{getv "/solr/org/apache/zookeeper/log"}}
log4j.logger.org.apache.hadoop={{getv "/solr/org/apache/hadoop/log"}}

# set to INFO to enable infostream log messages
log4j.logger.org.apache.solr.update.LoggingInfoStream={{getv "/solr/org/apache/solr/update/logginginforstream"}}