# Use official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the entire app code
COPY . .

# Expose port used by the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]