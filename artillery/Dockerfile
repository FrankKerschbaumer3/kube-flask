FROM node:alpine
WORKDIR /usr/src/app

RUN npm install artillery
RUN npm install artillery-plugin-faker
RUN ./node_modules/.bin/artillery -V

COPY . .

CMD sh run.sh
