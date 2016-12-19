FROM frolvlad/alpine-oraclejdk8:slim
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
VOLUME /tmp
ADD /target/eureka-server-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-sc", "java $JAVA_OPTS -jar /app.jar" ]