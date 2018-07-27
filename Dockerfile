
FROM node:corbon  #official image from node.js
WORKDIR /user/src/app
COPY package*.json ./  #coppy files i to the docker image in WORKDIR
RUN npm install   #dowlad all dependensies for app to run
COPY . .   #copy all files from lokaklnata dir to WORKDIR
EXPOSE 8080     #app i listening on 8080 port
CMD ["npm", "start"]   #starts app in container
