#Specifying a base image
FROM node:alpine

#Specifying a working directory
WORKDIR /app
COPY package.json .

#installing some dependencies
RUN npm install
COPY . .

#Default command
CMD ["npm", "start"]