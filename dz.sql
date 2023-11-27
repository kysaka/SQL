SELECT
  CONCAT(
    IF(days > 0, CONCAT(days, ' days '), ''),
    IF(hours > 0, CONCAT(hours, ' hours '), ''),
    IF(minutes > 0, CONCAT(minutes, ' minutes '), ''),
    IF(seconds > 0, CONCAT(seconds, ' seconds'), '')
  ) AS formatted_duration
FROM (
  SELECT
    FLOOR(seconds / 86400) AS days,
    FLOOR((seconds % 86400) / 3600) AS hours,
    FLOOR(((seconds % 86400) % 3600) / 60) AS minutes,
    seconds % 60 AS seconds
  FROM (SELECT 123456 AS seconds) AS time_data
) AS formatted_time;

SELECT number
FROM generate_series(1, 10) AS number
WHERE number % 2 = 0;

