# Use an official Node.js runtime as a parent image
FROM node:16.13.2

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json /app

# Install application dependencies
RUN npm install

# Copy all application files to the working directory
COPY ./ /app

# Expose port 2352
EXPOSE 2352

# Define the command to start your Node.js application
CMD [ "node", "server.js" ]