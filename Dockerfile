FROM node:alpine as builder
WORKDIR /app
ADD . /app
RUN npm install
ADD package.json /app/package.json
RUN npm run build

FROM nginx:alpine 
COPY --from=builder /app/dist/ /web/dist/
ADD /nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80