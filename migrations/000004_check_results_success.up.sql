BEGIN;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS check_results ADD COLUMN IF NOT EXISTS successful bool NOT NULL DEFAULT false;
ALTER TABLE IF EXISTS check_results ADD COLUMN IF NOT EXISTS error text;

COMMIT;