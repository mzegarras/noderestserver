FROM node:8.12.0-alpine

# Create app directory
WORKDIR /usr/src/app

ENV PORT 8080

COPY package*.json ./
ADD ./server/ ./server
RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
