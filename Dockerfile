FROM mfrankl/javamaven:latest

WORKDIR /code

#RUN ["git", "clone", "https://github.com/ylno/MessageBroadcast.git"]
#
#WORKDIR /code/MessageBroadcast
#
#RUN ["mvn", "package"]

# Prepare by downloading dependencies

COPY javaexecutor.sh javaexecutor.sh

#EXPOSE 4567
CMD sh ./javaexecutor.sh
