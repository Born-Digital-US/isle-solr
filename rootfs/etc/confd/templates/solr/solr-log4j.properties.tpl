<?xml version="1.0" encoding="UTF-8" ?>
<!-- $Id$ -->
<!DOCTYPE log4j:configuration SYSTEM "log4j.dtd">
<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/">

  <appender name="STDOUT" class="org.apache.log4j.ConsoleAppender">
    <layout class="org.apache.log4j.PatternLayout">
      <param name="ConversionPattern" value="%-5p - %d{yyyy-MM-dd HH:mm:ss.SSS}; %C; %m\n"/>
    </layout>
  </appender>
  <logger name="org.apache.zookeeper" additivity="false">
    <level value="{{getv "/solr/org/apache/zookeeper/log"}}" />
    <appender-ref ref="STDOUT"/>
  </logger>
  <logger name="org.apache.hadoop" additivity="false">
    <level value="{{getv "/solr/org/apache/hadoop/log"}}" />
    <appender-ref ref="STDOUT"/>
  </logger>
  <logger name="org.apache.solr.update.LoggingInfoStream" additivity="false">
    <level value="{{getv "/solr/org/apache/solr/update/logginginforstream"}}" />
    <appender-ref ref="STDOUT"/>
  </logger>
  <root>
    <level value="{{getv "/solr/root/logger"}}" />
    <appender-ref ref="STDOUT"/>
  </root>
</log4j:configuration>