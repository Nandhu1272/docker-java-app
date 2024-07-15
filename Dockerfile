FROM openjdk:17-jdk-slim
WORKDIR /app
COPY src /app/src
RUN mkdir /app/classes
RUN javac -d /app/classes /app/src/Main.java
CMD ["java", "-cp", "classes", "Main"]