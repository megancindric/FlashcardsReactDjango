FROM mysql
ENV MYSQL_ROOT_PASSWORD=root
EXPOSE 3306
COPY init.sql /docker-entrypoint-initdb.d/
COPY SampleDataDump.sql /docker-entrypoint-initdb.d/