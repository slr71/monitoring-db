BEGIN;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS check_results DROP COLUMN IF EXISTS successful;
ALTER TABLE IF EXISTS check_results DROP COLUMN IF EXISTS error;

COMMIT;