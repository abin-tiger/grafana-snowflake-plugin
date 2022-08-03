FROM grafana/grafana-oss:latest-ubuntu

USER root

RUN apt update && apt install wget unzip -y

USER grafana

RUN wget https://github.com/michelin/snowflake-grafana-datasource/releases/latest/download/snowflake-grafana-datasource.zip -P /var/lib/grafana/plugins/
RUN unzip /var/lib/grafana/plugins/snowflake-grafana-datasource.zip -d /var/lib/grafana/plugins/

