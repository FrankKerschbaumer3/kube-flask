FROM node:alpine
WORKDIR /usr/src/app

RUN npm install artillery artillery-plugin-faker
RUN ./node_modules/.bin/artillery -V

COPY . .

CMD sh run.sh
