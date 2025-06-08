FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN ./gradlew build --no-daemon

CMD ["java", "-jar", "Lavalink.jar"]
