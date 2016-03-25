class Db
	constructor: ()->
	connect: () ->
		@phrases = require './ru'
	getPhrase : (name) ->
		unless @phrases[name]
			throw new Error('Нет такой фразы: ' + name)
		return @phrases[name]

module.exports = Db