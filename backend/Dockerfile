# Use the official Node.js image as the base image
FROM node:18



# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

ENV MONGODB_URI="mongodb://127.0.0.1:27017/mydatabase"

# Expose a port (if your Node.js app listens on a specific port)
EXPOSE 4000

# Command to start your Node.js app
CMD ["node", "index.js"]