FROM node:16-alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY package.json tsconfig.json ./
COPY src ./src
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait
RUN npm install
RUN npm run build-ts

EXPOSE 4000
CMD /wait && npm start