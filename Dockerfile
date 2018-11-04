FROM node:latest

WORKDIR /home/node/app

# add application files
COPY . .

# install dependencies
RUN yarn install --production

ENV HOST 0.0.0.0
ENV PORT 3333
ENV DB_HOST host.docker.internal

EXPOSE ${PORT}

CMD ["npm", "start"]