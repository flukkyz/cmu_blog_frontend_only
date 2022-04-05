FROM node:12.20.1-alpine3.10

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /app
COPY . /app/

WORKDIR /app
RUN yarn
RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start" ]