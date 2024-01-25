# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Build the React app
RUN npm run build

# Set environment variable for production


# Expose port 3000 (or the port your React app uses)
EXPOSE 3000

# Command to run your production-ready application
CMD ["npm", "start"]
