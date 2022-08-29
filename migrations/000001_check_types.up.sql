BEGIN;

SET search_path = public, pg_catalog;

CREATE TABLE IF NOT EXISTS check_types (
    id uuid NOT NULL DEFAULT uuid_generate_v4(),
    name character varying(32) NOT NULL UNIQUE,
    description text,
    PRIMARY KEY (id)
);

COMMIT;