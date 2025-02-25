FROM amazoncorretto:17
ARG JAR_FILE_VERSION
ADD target/microservice-visit-${JAR_FILE_VERSION}.jar app.jar
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]