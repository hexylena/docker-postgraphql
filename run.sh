#!/bin/sh
ARGS=""
if [ ! -z "$DB_DEFAULT_ROLE" ]; then
	ARGS="$ARGS --default-role $DB_DEFAULT_ROLE"
fi

if [ ! -z "$DB_GRAPHQL_PATH" ]; then
	ARGS="$ARGS --graphql $DB_GRAPHQL_PATH"
fi

if [ ! -z "$DB_GRAPHIQL_PATH" ]; then
	ARGS="$ARGS --graphiql $DB_GRAPHIQL_PATH"
fi

if [ ! -z "$DB_DISABLE_GRAPHIQL" ]; then
	ARGS="$ARGS --disable-graphiql"
fi

if [ ! -z "$PG_SECRET" ]; then
	ARGS="$ARGS --secret $PG_SECRET"
fi

if [ ! -z "$DB_TOKEN" ]; then
	ARGS="$ARGS --token $DB_TOKEN"
fi

if [ ! -z "$RELAY1" ]; then
	ARGS="$ARGS --classic-ids"
fi

if [ ! -z "$DYNAMIC_JSON" ]; then
	ARGS="$ARGS --dynamic-json"
fi

postgraphql \
	-c $DB_URI \
	-s $DB_SCHEMA \
	-p 5000 \