FROM node
RUN apt-get update -y && apt-get install vim curl apt-transport-https git -y
WORKDIR /app
COPY app.js ./
COPY package* ./
COPY ./ /app/docker
RUN npm install
CMD [ "node" , "/app/app.js"]