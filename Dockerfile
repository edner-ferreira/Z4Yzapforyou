FROM ubuntu:18.04 AS Z4YJAVA
RUN apt-get update && apt-get install openjdk-8-jdk -y \
	&& apt-get install openjdk-8-jre -y \
	&& apt-get install maven -y\
	&& apt-get install nano \
	&& apt-get install curl -y 
#ARG JAR_FILE=target/*.jar
WORKDIR /usr/src/app
#COPY ${JAR_FILE} app.jar
COPY . .
EXPOSE 8081
#CMD java -jar app.jar
CMD mvn spring-boot:run
