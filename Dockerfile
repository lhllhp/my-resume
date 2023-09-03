# Base image
FROM node:14-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build Vue.js application
RUN npm run build

# Production image
FROM nginx:alpine

# Copy built files from build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Expose the port (modify if necessary)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
