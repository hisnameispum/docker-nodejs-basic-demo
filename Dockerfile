# Layer 1
FROM node:12 

# Layer 2
WORKDIR /app

# Layer 3
COPY package*.json ./

# Layer 4
RUN npm install
# Refers to Shell Form

# . means current working directory
COPY . .

# For routing
ENV PORT=8080

# For Listening
EXPOSE 8080

# Describe how to run the app
CMD [ "npm", "start" ]
# Refers to Exec Form
