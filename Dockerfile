FROM ubuntu

# Install Node.js and other dependencies
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get -y install python build-essential nodejs

# Install nodemon
RUN npm install -g nodemon

RUN mkdir -p /src
WORKDIR /src

# Install app dependencies
ADD package.json /tmp/package.json
RUN cd /tmp && npm install --production
RUN cp -a /tmp/node_modules /src/node_modules

# Bundle app source

ADD . /src

# Expose port
EXPOSE  8080

# Run app using nodemon
CMD ["nodemon", "index.js", "-L"]