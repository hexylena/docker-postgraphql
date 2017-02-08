# docker-postgraphql [![Docker Automated buil](https://img.shields.io/docker/automated/erasche/postgraphql.svg)](https://hub.docker.com/r/erasche/postgraphql/)

Simple container for exposing graphql/graphiql as part of a completely
dockerized environment. Example `docker-compose.yml` is for genomics data with
the Chado database schema.

## Usage

```yaml
postgraphql:
    image: erasche/postgraphql:latest
    ports:
        - "5000"
    environment:
        #DB_DEFAULT_ROLE: postgres
        DB_GRAPHQL_PATH: "/graphql"
        DB_GRAPHIQL_PATH: "/graphiql"
        PG_SECRET: "deadbeefcafe"
        DB_SCHEMA: "public"
		PGUSER: postgres
		PGPASSWORD: postgres
		PSHOST: postgres
		PGDATABASE: postgres
		PGPORT: 5432
    links:
        - "your_postgres_container:postgres"
```


## LICENSE

MIT
