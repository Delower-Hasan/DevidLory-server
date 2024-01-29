# Use an official Node.js runtime as a base image
FROM node:18-alpine3.18

#Set the working directory
WORKDIR /app/backend

# Copy package.json and package-lock.json to the working directory
COPY package.json .

#install npm
RUN npm install

#copy all files to working directory
COPY . .

EXPOSE 8000

CMD ["npm","start"]