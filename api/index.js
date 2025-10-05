const express = require('express');
const app = express();
app.use(require('cors')());
app.use(express.json());

app.get('/health', (req, res) => res.send('OK'));

app.listen(3001, () => console.log('API rodando na porta 3001'));
