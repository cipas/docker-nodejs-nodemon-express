## Usage

# How to use it

```bash
npm install
docker build -t docker-nodemon-nodejs-express .
docker run -i -t -v `pwd`:/usr/src/app/ --rm -p 8080:8080 docker-nodemon-nodejs-express
```

And you cand start hacking