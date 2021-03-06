// Generated by CoffeeScript 1.10.0
(function() {
  var Db, User, db;

  Db = require('db');

  db = new Db;

  db.connect();

  User = (function() {
    function User(name) {
      this.name = name;
      this.log = require('../logger')(module);
    }

    User.prototype.hello = function(who) {
      console.log(this.log);
      console.log(db);
      return this.log(db.getPhrase('Hello') + ', ' + who.name);
    };

    return User;

  })();

  module.exports = User;

}).call(this);

//# sourceMappingURL=index.js.map
