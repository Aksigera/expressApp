User = require 'user'
Db = require 'db'
db = new Db
do db.connect

run = () ->
	vasya = new User 'Вася'
	petya = new User 'Петя'

	vasya.hello petya

	console.log db.getPhrase 'Run successful'

if module.parent
	exports.run = run
else
	do run