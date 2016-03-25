Db = require 'db'
db = new Db
do db.connect

class User
	constructor: (@name) ->
		@log = require('../logger')(module)


	hello: (who) ->
		console.log @log
		console.log db
		@log db.getPhrase('Hello') + ', ' + who.name


module.exports = User