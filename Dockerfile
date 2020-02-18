FROM node:alpine
WORKDIR /app
RUN apk add --no-cache \
    git \
    python \
    ;
COPY . /app
RUN npm i -g nodemon
RUN npm ci
RUN npm run update-svelte
RUN npm run build-svelte
EXPOSE 3000
ENTRYPOINT ["npm", "start"]