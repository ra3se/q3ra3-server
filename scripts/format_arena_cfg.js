/*
Script used for generating a prettier arena.cfg
Usage: node scripts/format_arena_cfg.js > arena.cfg
*/

const createReadStream = require('fs').createReadStream
const readStream = createReadStream('../arena/arena.cfg');

function getCharOccurences(line, char) {
  return line ? (line.match(new RegExp(char, "g")) || []).length : 0
}

readStream.on('data', chunk => {
  data = chunk.toString()
    .replace(/\t/g, ' ')
    .replace(/ +/g, ' ')
    .replace(/\n[\n\s]+/g, "\n")
    .replace(/:([^\s]+)/g, ': $1')
    .replace(/\/\/([^\s]+)/g, '// $1')
    .trim()

  let depth = 0
  data.split('\n').forEach((line, index) => {
    depth -= getCharOccurences(line, "}")

    if (getCharOccurences(line, "{") > 0) {
      console.log()
    }

    console.log("  ".repeat(depth)+line);

    depth += getCharOccurences(line, "{")
  });
});
