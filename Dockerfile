FROM node:alpine as builder
ADD . /app
WORKDIR /app
RUN npm install
COPY package.json /app/package.json
RUN npm run build

# FROM nginx:alpine 
# # COPY --from=builder var/app/dist/ /web/dist/
# COPY --from=builder app/dist/ /usr/share/nginx/html
# RUN echo $PWD

# ADD nginx.conf /etc/nginx/conf.d/default.conf
# RUN cat /etc/nginx/conf.d/default.conf

EXPOSE 3006

CMD [ "node", "server.js" ]