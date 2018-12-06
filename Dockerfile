FROM node:8.12.0-alpine

# Create app directory
WORKDIR /usr/src/app

ENV PORT 3000

COPY package*.json ./
ADD ./server/ ./server
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
