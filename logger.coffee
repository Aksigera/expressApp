#log = require('logger')(module)
module.exports = (module) ->
	do ()->
		args = [module.filename].concat [].slice.call arguments
		console.log.apply console, args