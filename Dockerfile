FROM node:20
RUN apt-get update && apt-get install -y git
WORKDIR /usr/src/app
RUN git clone https://github.com/ylno/MessageBroadcastNode.git .
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "start"]
