# dbt run/test example

Example repo with a dockerized spark/hudi backend against which to run DBT 1.8 transformations/unit tests.

## Setup

**1. Start the backend**

```bash
$ docker compose up -d hudi
```

**2. Run DBT transformations**

```bash
$ docker compose run dbt dbt run
```

**3. Run DBT unit tests**

```bash
$ docker compose run dbt dbt test
```

