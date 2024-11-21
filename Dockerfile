# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your application listens on (usually 3000 or 8080 for Node.js)
EXPOSE 3000

# Command to start your application
CMD ["node", "server.js"]
