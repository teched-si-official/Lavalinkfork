FROM openjdk:17-jdk-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/teched-si-official/Lavalinkfork .

RUN ./gradlew build --no-daemon

CMD ["java", "-jar", "LavalinkServer/build/libs/Lavalink.jar"]
