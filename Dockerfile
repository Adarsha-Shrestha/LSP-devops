#use node 22 image as base image
FROM node:22

# Set working directory in container
WORKDIR /app

# Copy package files
COPY package*.json ./
COPY nonexistent-file.txt /app/

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]