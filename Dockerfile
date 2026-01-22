FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
LABEL maintainer="itgenius"

WORKDIR /app
VOLUME /app/logs

RUN mkdir -p /app/logs
ADD target/itgenius-0.0.1-SNAPSHOT.jar /app/itgenius-0.0.1-SNAPSHOT.jar

EXPOSE 8085
ENTRYPOINT ["java", "-jar", "itgenius-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=dev"]
