# Use a lightweight Node.js image
FROM node:18-bullseye

# Set working directory
WORKDIR /app

RUN git clone https://github.com/USA9340/Gbnk.git /app

# Set correct permissions
RUN chmod -R 777 /app

# Install project dependencies
WORKDIR /app
RUN npm install

# Expose a port
EXPOSE 7860

# Start the application
CMD ["node", "server.js"]