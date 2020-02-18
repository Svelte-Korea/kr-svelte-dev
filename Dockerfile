FROM node:alpine
WORKDIR /app
RUN apk add --no-cache \
    git \
    python \
    ;
RUN git clone https://github.com/Svelte-Korea/kr-svelte-dev.git /app
RUN npm i -g nodemon
RUN npm i
RUN npm start
RUN cd __svelte/site
ENTRYPOINT [ "nodemon", "__sapper__/build/index.js" ]
EXPOSE 3000