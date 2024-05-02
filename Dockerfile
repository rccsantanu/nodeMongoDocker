# Use the official Node.js Alpine image as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy only the package.json and package-lock.json files to leverage Docker layer caching
COPY package*.json ./

# Install project dependencies using npm ci for a clean installation
RUN npm ci

# Copy the entire application code into the container (excluding node_modules which are installed in the previous step)
COPY . .

# Expose the port that the Node.js application will listen on
EXPOSE 3000

# Start the Node.js application in development mode using nodemon
CMD ["npm", "run", "dev"]
