const faker = require('faker/locale/es');

const firstName = faker.name.firstName();
const lastName = faker.name.lastName();
const month = faker.date.month();

console.log({firstName, lastName, month});