#!/bin/bash

echo "Perform Operation in su mode"
export LB_HOME=/home/romul/java/liquibase
echo "Export LB_HOME=/home/romul/java/liquibase Executed"
export PATH="$LB_HOME:$PATH"
echo "Export PATH=\"$PATH\" Executed"
echo "LB_HOME/lib $LB_HOME/lib"
liquibase --driver=org.postgresql.Driver \
--classpath=$LB_HOME/lib \
--changeLogFile=databaseChangeLog.sql \
--url="jdbc:postgresql://localhost:5432/masterjava" \
--username=user \
--password=password \
migrate