#Step 1: Use official Node.js image
FROM node:22.15.0

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the app's source code to the container
COPY . .

# Step 6: Expose the port that your app will run on
EXPOSE 5173

# Step 7: Start the app when the container is launched
CMD ["npm", "run", "dev"]
