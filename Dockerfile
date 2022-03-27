FROM gradle:7-jdk11-alpine

COPY . .
RUN gradle clean build

CMD ["java", "-jar", "app/build/libs/app.jar"]