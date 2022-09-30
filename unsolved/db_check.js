const execSync = require('child_process').execSync;

async function waitForDb() {
  console.log('WAITING FOR MYSQL TO START')
  let count = 0
  const query = `USE music_db; SELECT count(*) FROM artists;`
  while(count < 15) {
    try {
      // const answer = execSync('docker exec mysql-sandbox mysql -e "SELECT 1 + 1 AS answer"').toString()
      const answer = execSync(`docker exec mysql-sandbox mysql -e "${query}"`).toString()
      if (answer && !answer.includes('0'))
        break;
    } catch(err) {
      count++
      console.log('WAITING 1 SEC')
      execSync('sleep 1')
    }
  }
  if (count === 15) {
    console.log('\n\nCould not connect to MySQL')
    console.log('\x1b[31m%s\x1b[0m', 'Please check your schema.sql file\n')
    process.exit(1)
  }
  execSync('sleep 1')
}

waitForDb()
