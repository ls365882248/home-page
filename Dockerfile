FROM node:alpine as builder
ADD . /var/app
WORKDIR /var/app
RUN npm install
COPY package.json /var/app/package.json
# RUN npm run build
# CMD serve -s build
RUN npm run build
COPY var/app/dist/ /web/dist/
ADD nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "node", "server.js" ]