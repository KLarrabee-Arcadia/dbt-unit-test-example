FROM python:3.10-slim-buster

RUN apt-get update && apt-get install -y --no-install-recommends

# For building psycopg2
RUN apt-get install -y \
    gcc \
    libpq-dev \
    python3-dev

RUN pip install --upgrade pip
RUN pip install \
    dbt-core==1.8 \
    dbt-spark[PyHive]==1.8 \
    dbt-postgres==1.8

WORKDIR /usr/src/app

CMD ["dbt"]
