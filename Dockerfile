FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN npm install

RUN npm install jquery --save

RUN npm install react-ga --save

COPY . .

EXPOSE 3000

CMD ["npm", "start"]