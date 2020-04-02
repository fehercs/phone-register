const { table } = require('table');
const fs = require('fs');
const knex = require('knex')({
  client: 'mysql',
  connection: {
    host: '127.0.0.1',
    user: 'root',
    password: 'toor',
    database: 'phone_register'
  }
});

const tableName = 'phone_register';

const listAllRecords = async () => {
  const data = [
    [
      'ID',
      'First Name',
      'Last Name',
      'Phone Number'
    ]
  ];
  const tableRecords = await knex.select().from(tableName);
  tableRecords.forEach(record =>
    data.push([
      record.id,
      record.first_name,
      record.last_name,
      record.phone_number
    ])
  );
  console.log(table(data));
};

listAllRecords();
