SELECT CAST('{"name": "Postgres", "version": 12.1}' AS JSONB) -> 'version';
--
SELECT CAST('{"name": "Postgres", "version": 12.1, "versionInfo": {"major": 12, "minor": 1, "patch": 0}}' AS JSONB) -> 'versionInfo' ->> 'major';
--
SELECT CAST(CAST('{"name": "Postgres", "version": 12}' AS JSONB) -> 'version' AS NUMERIC);