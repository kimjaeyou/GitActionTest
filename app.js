const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello CI/CD!!!!!!!!!!!!From GitHub Actions 25/05/28-15:41');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
