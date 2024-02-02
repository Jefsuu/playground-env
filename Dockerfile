FROM apache/airflow:2.8.1 as airflow

USER root
COPY airflow_start.sh /airflow_start.sh
RUN chmod +x /airflow_start.sh
USER airflow
ENTRYPOINT ["/bin/bash", "/airflow_start.sh"]

FROM docker.io/bitnami/spark:3.5 as spark