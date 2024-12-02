FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY . /app

RUN chmod +x gradlew

RUN ./gradlew build

COPY ./build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
