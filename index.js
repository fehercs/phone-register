const { table } = require('table');
const read = require('readline-sync');
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

const drawTableFromQuery = (query) => {
  const data = [
    [
      'Name',
      'Phone Number'
    ]
  ];
  query.forEach(record =>
    data.push([
      `${record.first_name} ${record.last_name}`,
      record.phone_number
    ])
  );
  console.log(table(data));
};

const createSelectArray = (query) => {
  const data = [];
  query.forEach(record =>
    data.push(
      `${record.first_name} ${record.last_name} ${record.phone_number}`
    )
  );
  return data;
};

const listAllRecords = async () => {
  const tableRecords = await knex.select().from(tableName).orderBy([
    { column: 'last_name' },
    { column: 'first_name' }
  ]);
  if (tableRecords.length) {
    drawTableFromQuery(tableRecords);
  } else {
    console.log('\n\nEMPTY TABLE!\n\n');
  }
};

const searchTable = async () => {
  const name = readName();
  const records = await selectFromTable(name);
  if (records) {
    drawTableFromQuery(records);
  }
};

const selectFromTable = async (name) => {
  let query;
  if (!name.first.length && name.last) {
    query =
      await knex(tableName)
        .where('last_name', 'like', `%${name.last}%`)
        .orderBy([
          { column: 'last_name' },
          { column: 'first_name' }
        ]);
  } else if (name.first.length && !name.last.length) {
    query =
      await knex(tableName)
        .where('first_name', 'like', `%${name.first}%`)
        .orderBy([
          { column: 'last_name' },
          { column: 'first_name' }
        ]);
  } else if (name.first.length && name.last.length) {
    query =
      await knex(tableName)
        .where('last_name', 'like', `%${name.last}%`)
        .andWhere('first_name', 'like', `%${name.first}%`)
        .orderBy([
          { column: 'last_name' },
          { column: 'first_name' }
        ]);
  } else {
    console.log('INVALID SEARCH!');
    return false;
  }
  if (queryExists(query)) {
    return query;
  } else {
    return false;
  }
};

const exit = () => {
  if (read.keyInYNStrict('\nEXIT?\n')) return true;
  console.clear();
  return false;
};

const queryExists = (query) => {
  if (query.length) return true;
  else {
    console.log('\n\nNO MATCHING RECORDS!\n\n');
    return false;
  }
};

const readName = () => {
  const firstNameSelect = read.question('Enter first name!\n');
  const lastNameSelect = read.question('Enter last name!\n');
  return { first: firstNameSelect, last: lastNameSelect };
};

const readNumber = () => {
  let run = true;
  while (run) {
    const phoneNumber = read.question('Enter phone number starting with "06"!\n');
    if (phoneNumber.search(/[0-9]{10,11}/) !== -1) {
      run = false;
      return phoneNumber;
    } else {
      console.log('Invalid phone number!\nUse format: "06123456789"');
      if (exit()) run = false;
    }
  }
};

const insertNewRecord = async () => {
  const name = await readName();
  const phoneNumber = readNumber();
  await knex(tableName)
    .insert({
      first_name: name.first,
      last_name: name.last,
      phone_number: phoneNumber
    });
  console.log('\n\nINSERTED!\n\n');
};

const modifyRecordSelect = async (option) => {
  const name = readName();
  const query = await selectFromTable(name);
  if (query.length === 1) {
    await drawTableFromQuery(query);
    if (await read.keyInYNStrict(`Do you want to ${option} the record above? [Y/N]\n`)) {
      if (option === 'update') {
        const phoneNumber = readNumber();
        await updateRecord(name.first, name.last, phoneNumber);
      } else {
        await deleteRecord(name.first, name.last);
      }
    }
  } else {
    const data = createSelectArray(query);
    console.log(data);
    const index = read.keyInSelect(data, `Which record do you want to ${option}?`, { cancel: false });
    if (option === 'update') {
      const phoneNumber = readNumber();
      await updateRecord(query[index].first_name, query[index].last_name, phoneNumber);
    } else {
      await deleteRecord(query[index].first_name, query[index].last_name);
    }
  }
};

const updateRecord = async (firstName, lastName, phoneNumber) => {
  await knex(tableName)
    .where({ first_name: firstName })
    .andWhere({ last_name: lastName })
    .update({ phone_number: phoneNumber });
  console.log('\n\nUPDATED!\n\n');
};

const deleteRecord = async (firstName, lastName) => {
  await knex(tableName)
    .where({ first_name: firstName })
    .andWhere({ last_name: lastName })
    .del();
  console.log('\n\nDELETED!\n\n');
};

const main = async () => {
  const menu = [
    'List all records',
    'Find a number',
    'Add record',
    'Update number',
    'Delete record'
  ];
  let run = true;
  while (run) {
    const index = read.keyInSelect(menu, 'Select options!', { cancel: false });
    switch (index) {
      case 0:
        await listAllRecords();
        break;
      case 1:
        await searchTable();
        break;
      case 2:
        await insertNewRecord();
        break;
      case 3:
        await modifyRecordSelect('update');
        break;
      case 4:
        await modifyRecordSelect('delete');
        break;
      default:
        console.log(index);
        break;
    }
    if (await exit()) {
      run = false;
      process.exit(0);
    }
  }
};
main();
