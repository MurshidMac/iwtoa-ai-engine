const proxy = require('http-proxy-middleware');

module.exports = function(app) {
  //app.use(proxy('/process-api', {target: 'http://localhost:8090'}));
  app.use(proxy('/find', {target: 'https://api.getAddress.io'}));
};
