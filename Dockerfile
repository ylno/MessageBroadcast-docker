FROM java:8

# Install maven
RUN apt-get update && apt-get install -y maven git redis-server

WORKDIR /code

RUN ["git", "clone", "https://github.com/ylno/MessageBroadcast.git"]

WORKDIR /code/MessageBroadcast

RUN ["mvn", "package"]

# Prepare by downloading dependencies

#EXPOSE 4567
#CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/MessageBroadcast-1.0-SNAPSHOT.jar"]
CMD ["mvn", "exec:java"]
