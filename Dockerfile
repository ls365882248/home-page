FROM node:alpine as builder
ADD . /app
WORKDIR /app
RUN npm install
COPY package.json /app/package.json
RUN npm run build

FROM nginx:alpine 
# COPY --from=builder var/app/dist/ /web/dist/
ADD app/dist/ /usr/share/nginx/html
RUN echo $PWD
ADD nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "node", "server.js" ]