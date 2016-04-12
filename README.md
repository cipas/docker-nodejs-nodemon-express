## Usage

# How to use it

```bash
git clone https://github.com/cipas/docker-nodejs-nodemon-express.git
cd docker-nodemon-nodejs-express
npm install
docker build -t docker-nodemon-nodejs-express .
docker run -i -t -v `pwd`:/usr/src/app/ --rm -p 8080:8080 docker-nodemon-nodejs-express
```

And you cand start hacking