FROM node:18
WORKDIR /home/app
COPY ./package.json /home/app/
RUN npm install
COPY ./app /home/app
EXPOSE $NODE_DOCKER_PORT
CMD ["npm", "run", "dev"]
