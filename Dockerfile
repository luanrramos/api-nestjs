FROM node:20

# Create and set the working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

# Run the app
CMD [ "npm", "run", "start:dev" ]
