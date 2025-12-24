# Official Node.js image as a base image
FROM node:18-alpine

#Create app directory
WORKDIR /app

#Copy package files
COPY package*.json ./

#Install dependencies
RUN npm install  

#Copy rest of application source code
COPY . .

# Expose port
EXPOSE 3000

#Command to run application
CMD [ "node", "src/index.js" ]
