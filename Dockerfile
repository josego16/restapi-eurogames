### ETAPA 1: Compilación ###
FROM eclipse-temurin:21-jdk-jammy AS build

WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip \
    && rm -rf /var/lib/apt/lists/*

# Instalar Gradle manualmente (opcional si no usas wrapper)
RUN wget https://services.gradle.org/distributions/gradle-8.14-all.zip -O /tmp/gradle.zip \
    && unzip /tmp/gradle.zip -d /opt/ \
    && ln -s /opt/gradle-8.14/bin/gradle /usr/local/bin/gradle \
    && rm -rf /tmp/gradle.zip

COPY build.gradle.kts settings.gradle.kts gradlew gradlew.bat ./
COPY gradle/ gradle/
COPY src src

RUN chmod +x gradlew

# Instala dependencias y compila distribución
RUN ./gradlew clean installDist --no-daemon

### ETAPA 2: Ejecución ###
FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

# Usa el nombre del rootProject: 'restapi-eurogames'
COPY --from=build /app/build/install/restapi-eurogames /app

RUN chmod +x /app/bin/restapi-eurogames

EXPOSE 8080

CMD ["/app/bin/restapi-eurogames"]