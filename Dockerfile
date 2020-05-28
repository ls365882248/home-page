FROM node:alpine as builder
ADD . /var/app
WORKDIR /var/app
RUN npm i -g yarn
ENV TZ Asia/Shanghai
# COPY package.json /usr/src/app/
RUN yarn
RUN yarn build
# CMD serve -s build
CMD yarn dev
# COPY /build /usr/share/nginx/html
# ADD nginx.conf /etc/nginx/conf.d/default.conf
# COPY . /usr/src/app
EXPOSE 3005
