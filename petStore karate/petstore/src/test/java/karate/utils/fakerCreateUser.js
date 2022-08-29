const faker = require('faker');
const fs = require('fs');

function generateUsers() {
    let users = [];
    var valor= Math.floor(Math.random() * 100) + 100;
    for (let id = valor; id <= valor+50; id++) {
        const username = faker.internet.userName();
        const firstName = faker.name.firstName();
        const lastName = faker.name.lastName();
        const email = faker.internet.email();
        const password = faker.internet.password(8);
        const phone = faker.phone.phoneNumber('###-###-###');
        const userstatus = Math.floor(Math.random() * 99);
        users.push({
            id: id,
            username: username,
            firstName: firstName,
            lastName: lastName,
            email: email,
            password: password,
            phone: phone,
            userstatus: userstatus
        });
    }

    return { users }
}
const generateData = generateUsers();
fs.writeFileSync('data.js', JSON.stringify(generateData, null, "\t"));