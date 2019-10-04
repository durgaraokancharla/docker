FROM node:alpine

#ENV FRONT_URL=http://192.168.121.139:8081

WORKDIR /home/node/webapp

COPY package.json .
RUN npm install

COPY . .

#EXPOSE 8000

# This, again, fixes the problem
# RUN chown -R node: /home/node/webapp
USER node
CMD ["npm", "start"]

