FROM node:16-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY --chown=node:node . .
COPY . ./
EXPOSE 5000

CMD ["npm","run","start"]
