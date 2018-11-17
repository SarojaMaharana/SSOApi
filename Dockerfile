From java:8-jre
WORKDIR usr/src
ENV MYSQL_DATABASE=moviedb
ENV MYSQL_USER=root-app
ENV MYSQL_PASSWORD=root123
ENV MYSQL_CI_URL=jdbc:mysql://localhost:3306/moviedb
ADD ./target/SSOAuthApi-0.0.1-SNAPSHOT.jar  /usr/src/SSOAuthApi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "SSOAuthApi-0.0.1-SNAPSHOT.jar"]