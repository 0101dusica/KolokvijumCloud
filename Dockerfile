# Koristimo Docker base image za Java 11
FROM adoptopenjdk/openjdk11:alpine

# Postavljamo radni direktorijum u kontejneru
WORKDIR /app

# Kopiramo JAR fajl aplikacije (potrebno je da se JAR generiše preko Maven build-a)
COPY target/app.jar /app/app.jar

# Izlažemo port na kojem aplikacija sluša
EXPOSE 8080

# Komanda za pokretanje aplikacije kada se kontejner pokrene
CMD ["java", "-jar", "app.jar"]