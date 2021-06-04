FROM node:15
# Not necessary but is recommended, sets the directory in the image you are working from.
WORKDIR /app
# Copy over the package.json to the working directory and install dependencies
COPY package.json .
RUN npm install
# copy the rest of the files (files you wrote for your app)
COPY . ./

# Environment veriables
ENV PORT 3000

# Port to open (when you open a port)
EXPOSE $PORT
# command to run the app
# CMD ["node","index.js"]
CMD ["npm", "run", "dev"]

# We seperated the npm packages and the code you wrote in order to optimize building docker, because docker will cache the results of each step when building.  This means if you wrote some code but didn't install anything new, when you rebuild your docker image, it will be way faster!