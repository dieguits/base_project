SELECT datname as databasename FROM pg_catalog.pg_database WHERE datname='datahub';

CREATE EXTENSION IF not exists "uuid-ossp" SCHEMA public;

CREATE SCHEMA IF NOT EXISTS main;