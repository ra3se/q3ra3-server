const fs = require('fs');
const path = require('path');
const config = JSON.parse(
	fs.readFileSync(path.resolve(__dirname, 'config.json'), {encoding: 'utf8'}));

module.exports = {
	production: config.database
};
