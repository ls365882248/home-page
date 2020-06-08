FROM node:alpine as builder
ADD . /var/app
WORKDIR /var/app
RUN npm install
COPY package.json /var/app/package.json
# RUN npm run build
# CMD serve -s build
RUN npm run build
COPY ./dist /usr/share/nginx/html
ENV PORT=3006
EXPOSE 3006

CMD [ "node", "server.js" ]