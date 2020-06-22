FROM node:alpine as builder
ADD . /var/app
WORKDIR /var/app
RUN npm install
COPY package.json /var/app/package.json
RUN npm run build

FROM nginx:alpine 
COPY --from=builder var/app/dist/ /web/dist/
ADD nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "node", "server.js" ]