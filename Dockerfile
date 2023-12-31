# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /my-app

# Copy package.json and package-lock.json to the container

COPY my-app/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY ./my-app/ .

# Build the React app
RUN npm run build

# Expose port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]