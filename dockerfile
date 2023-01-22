FROM node:16
# Create app directory
WORKDIR /whatsapp-api-tutorial
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
# Install app dependencies
RUN npm install
# Bundle app source
COPY . .
# Binding port
EXPOSE 80
# Command to run our app
CMD [ "node", "app.js"]
