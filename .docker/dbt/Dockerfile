FROM python:3.10-slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends

WORKDIR /usr/src/app

RUN pip install --upgrade pip
RUN pip install dbt-core==1.8 dbt-spark[PyHive]==1.8

CMD ["dbt"]
