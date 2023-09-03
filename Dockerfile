# Use an official Node.js runtime as the base image
FROM node:18.17.1


ARG REACT_APP_BACKEND_HOST
ENV REACT_APP_BACKEND_HOST=$REACT_APP_BACKEND_HOST

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install --loglevel verbose

# Copy the rest of the app's source code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]