FROM mysql:latest
ENV MYSQL_DATABASE=user
ENV MYSQL_ROOT_PASSWORD=root
EXPOSE 3306
CMD ["mysqld"]
