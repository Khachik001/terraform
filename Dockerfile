FROM node:14

WORKDIR /usr/src/

RUN npm install
RUN npm install express ejs

COPY   ./brainscale-simple-app .

EXPOSE 3000

CMD ["node", "app.js"]
