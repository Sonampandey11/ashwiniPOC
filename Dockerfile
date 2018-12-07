FROM java:8
VOLUME /tmp
ADD target/customer-1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
EXPOSE 8085
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Deureka.datacenter=cloud -jar /app.jar" ]