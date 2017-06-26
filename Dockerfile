FROM mfrankl/javamaven:latest

WORKDIR /code

RUN ["git", "clone", "https://github.com/ylno/MessageBroadcast.git"]

WORKDIR /code/MessageBroadcast

RUN ["mvn", "package"]

# Prepare by downloading dependencies

#EXPOSE 4567
CMD ["mvn", "exec:java"]
