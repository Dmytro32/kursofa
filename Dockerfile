FROM mysql
ENV MYSQL_DATABASE company
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
EXPOSSE 3306


