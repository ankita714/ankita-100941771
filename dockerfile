
# Use the official Node.js base image
FROM node:19.7.0-alpine

# Setting environment variables
ENV NODE_ENV=production

# Creating a new directory /labone
RUN mkdir /labone && chown node:node /labone

# Setting the working directory to /labone
WORKDIR /labone

# Setting the user to 'node' for security
USER node

COPY --chown=node:node . .

RUN npm install

EXPOSE 3000

# Setting the default command 
CMD ["node", "src/index.js"]
