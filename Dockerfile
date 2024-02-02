FROM apache/airflow:2.8.1 as airflow

USER root
COPY start.sh /start.sh
RUN chmod +x /start.sh
USER airflow
ENTRYPOINT ["/bin/bash", "/airflow_start.sh"]

FROM docker.io/bitnami/spark:3.5 as spark