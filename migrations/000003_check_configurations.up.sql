BEGIN;

SET search_path = public, pg_catalog;

CREATE TABLE IF NOT EXISTS check_configurations (
    id             uuid    not null default  uuid_generate_v4(),
    check_type     uuid    not null,
    format_version integer not null default 0,
    configuration  jsonb   not null default '{}',

    primary key(id),
    foreign key(check_type) references check_types(id)
);

COMMIT;