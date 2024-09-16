# Use an official Node.js image as the base
FROM node:16-alpine

# Set working directory
WORKDIR /Singh_Arshpreet_site

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 7775 for the app
EXPOSE 7775

# Start the application
CMD ["npm", "start"]
