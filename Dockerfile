# Sourced from: https://builder.aws.com/content/2mZS8pQknB6xAsjPK3cYH63mFps/dockerfile-for-a-nodejs-application
# Use an official Node.js runtime as a parent image
FROM node:24-bookworm

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Build app
RUN npm run build

# Expose port 3000 to the outside world
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "app.js"]