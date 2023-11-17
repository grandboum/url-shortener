FROM docker.io/library/eclipse-temurin:17

RUN apt update && apt install -y \
  jetty9 \
  maven \
  && rm -rf /var/lib/apt/lists/*

COPY pom.xml /src/app/pom.xml
COPY src /src/app/src

WORKDIR /src/app

EXPOSE 8081
ENTRYPOINT ["mvn", "jetty:run", "-Djetty.http.port=8081"]
