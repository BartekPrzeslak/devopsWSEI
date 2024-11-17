# Linuxowy kontener z openjdk v17
FROM openjdk:17-jdk-slim

# Ustawianie workdira w kontenerze
WORKDIR /app

# Skopiowanie pliku .jar z hosta do kontenera
COPY target/demoWeb-0.0.1-SNAPSHOT.jar /app/demoWeb.jar

# Wystawienie portu 8080
EXPOSE 8080

# Uruchomienie aplikacji Spring Boot przy starcie kontenera
ENTRYPOINT ["java", "-jar", "/app/demoWeb.jar"]

