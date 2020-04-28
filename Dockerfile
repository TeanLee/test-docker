FROM node
WORKDIR /app
COPY . /app/

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install

EXPOSE 8080

CMD [ "npm", "run", "serve" ]