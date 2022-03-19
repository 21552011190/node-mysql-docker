FROM node:fermium-alpine
# ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install
RUN npm i nodemon
# RUN npm install --production

COPY . .

# CMD [ "node", "index.js" ]
CMD [ "npx", "nodemon", "index.js" ]