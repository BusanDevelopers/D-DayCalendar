const express = require('express');
const compression = require('compression');

var app = express();
var fs = require('fs');

app.use(compression());

app.get('/', (request, response) => {
    response.send('Usage: /data/[DataID]');
});

app.get('/data/:dataId', (request, response, next) => {
    fs.readFile(`data/${request.params.dataId}`, 'utf8', (err, result) => {
        if(err) {
            next(err);
        } else {
            response.send(result);
        }
    })
})

app.use((request, response, next) => {
    response.status(404).send('Not Found');
});

app.use((err, request, response, next) => {
    response.status(500).send('Error occurred.');
});

app.listen(3000, () => console.log('Server On Successfully.'));