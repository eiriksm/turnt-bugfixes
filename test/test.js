require('should');
var a = require('../index')
describe('Beer module', function() {
  it('Should return the expected value', function() {
    a(1.050, 1.010).toFixed(2).should.equal('5.24');
  });
});
