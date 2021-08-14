FROM openjdk:11-jre-slim
WORKDIR /usr/src
ENV MONGO_URI mongodb://localhost:27017/mydemo
ADD ./target/demo-0.0.1-SNAPSHOT.jar /usr/src/demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar", "demo-0.0.1-SNAPSHOT.jar"]