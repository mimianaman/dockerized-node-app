# Step 1: Use the official Node.js image
FROM node:14

# Step 2: Create a working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the application code
COPY . .

# Step 5: Expose the port the app will run on
EXPOSE 3000

# Step 6: Start the application
CMD ["node", "index.js"]
