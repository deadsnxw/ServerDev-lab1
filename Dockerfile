FROM openjdk:23

WORKDIR /app

COPY . /app

RUN ./gradlew build

COPY ./build/libs/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
