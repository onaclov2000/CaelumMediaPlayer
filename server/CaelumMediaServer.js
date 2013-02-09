var connect = require('connect'),
    http = require('http');

connect()
    .use(connect.static('/media/1BA2440C0183D50E'))
    .use(connect.directory('/media/1BA2440C0183D50E'))
    .listen(80);
