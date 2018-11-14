FROM node:alpine
WORKDIR /usr/src/app

RUN npm install artillery artillery-plugin-expect
RUN ./node_modules/.bin/artillery -V
RUN npm install faker --save-dev

COPY . .

CMD sh run.sh
