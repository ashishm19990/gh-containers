FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.mc9dfvi.mongodb.net
ENV MONGODB_USERNAME ashish
ENV MONGODB_PASSWORD htG6UxT2Eat82B4U

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]