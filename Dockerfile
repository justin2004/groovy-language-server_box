FROM debian:10 as build0

RUN apt-get update && apt-get install -y gradle
RUN apt-get install -y git
RUN git clone https://github.com/prominic/groovy-language-server.git
WORKDIR groovy-language-server
RUN ./gradlew build

# openjdk:11 ?
FROM debian:10
RUN apt-get update && apt-get install -y openjdk-11-jre
COPY --from=build0 /groovy-language-server/build/libs/groovy-language-server-all.jar /root/ 
CMD java -jar /root/groovy-language-server-all.jar
