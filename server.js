const app = require('./src/app');

require('dotenv/config');

const port = process.env.PORT ? process.env.PORT : 3010;

app.listen(port, () => {
  console.log(`App listen on port ${port}`);
})
