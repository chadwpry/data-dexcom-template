COPY crimes (id, column2)
FROM '<path-to-my-project>/data/<csv-file>'
DELIMITER ','
HEADER
CSV;
