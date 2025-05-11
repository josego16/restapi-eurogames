### PRIMERA ETAPA: Compilación ###
# Utilizamos una imagen con JDK 21 para compilar el proyecto.
# Etiquetamos esta etapa como "build" para poder copiar desde ella en la segunda etapa.
FROM eclipse-temurin:21-jdk-jammy AS build

# Definimos el directorio de trabajo de la aplicación
WORKDIR /app

# Instalamos wget y unzip, y limpiamos caché de paquetes
RUN apt-get update && apt-get install -y wget unzip \
    && rm -rf /var/lib/apt/lists/*

# Descargamos e instalamos Gradle 8.14
RUN wget https://services.gradle.org/distributions/gradle-8.14-all.zip -O /tmp/gradle.zip \
    && unzip /tmp/gradle.zip -d /opt/ \
    && ln -s /opt/gradle-8.14/bin/gradle /usr/local/bin/gradle \
    && rm -rf /tmp/gradle.zip

# Copiamos los archivos esenciales de configuración de Gradle
COPY build.gradle.kts settings.gradle.kts gradlew gradlew.bat ./
COPY gradle/ gradle/

# Damos permisos al wrapper de Gradle
RUN chmod +x gradlew

# Pre-descargamos las dependencias para aprovechar la caché de Docker
RUN ./gradlew dependencies --no-daemon

# Copiamos el código fuente. Esto se hace después para evitar invalidar la caché anterior.
COPY upload upload
RUN chmod -R 755 upload  # Permisos seguros para subida de archivos

COPY backend backend
COPY src src

# Compilamos el proyecto (instalación distribuida en bin/lib)
RUN ./gradlew clean installDist --no-daemon

### SEGUNDA ETAPA: Imagen final de ejecución ###
# Utilizamos una imagen más ligera solo con JRE
FROM eclipse-temurin:21-jre-jammy

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos binarios y dependencias del build
COPY --from=build /app/build/install/server /app

# Copiamos binarios y dependencias del build
COPY --from=build /app/build/install/server /app

# Damos permisos de ejecución al binario principal
RUN chmod +x /app/bin/server

# Exponemos el puerto en el que se ejecutará el servidor
EXPOSE 8080

# Ejecutamos el servidor como usuario no root
USER appuser

# Definimos el comando por defecto al iniciar el contenedor
CMD ["/app/bin/server"]