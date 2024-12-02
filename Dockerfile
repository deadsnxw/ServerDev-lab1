FROM openjdk:23
VOLUME /tmp
CMD ["./gradlew", "build"]
COPY ./build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]