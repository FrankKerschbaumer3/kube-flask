'use strict';

module.exports = {
  generateRandomData
};

// Make sure to "npm install faker" first.
const Faker = require('faker');

function generateRandomData(userContext, events, done) {
  // generate data with Faker:
  const username = Faker.internet.userName();
  const email = Faker.internet.exampleEmail();
  const password = Faker.internet.password();
  // add variables to virtual user's context:
  userContext.vars.username = username;
  userContext.vars.email = email;
  userContext.vars.password = password;
  // continue with executing the scenario:
  return done();
}