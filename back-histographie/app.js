const express = require('express');
const app = express();
var cors = require('cors');

const port = 3000;

const globalRouter = require('./routes/global');
const quizzRouter = require('./routes/quizz');
const thematicsRouter = require('./routes/thematics');

app.use(cors());

app.use('/', globalRouter);
app.use('/thematics', thematicsRouter);
app.use('/quizz', quizzRouter);



app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});