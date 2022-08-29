BEGIN;

SET search_path = public, pg_catalog;

CREATE TABLE IF NOT EXISTS check_results (
    id         uuid        not null default uuid_generate_v4(),
    node       varchar(64) not null,
    check_type uuid        not null,
    result     jsonb       not null default '{}',

    primary key(id),
    foreign key(check_type) references check_types(id)
);

COMMIT;