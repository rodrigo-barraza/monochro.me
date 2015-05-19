express 	= require 'express'
path 		= require 'path'
assert 		= require 'assert'
stylus		= require 'stylus'

app 		= express()

compile = (str, path) ->
  stylus(str).set('filename', path)


app.set 'views', (path.join(__dirname + '/client/view'))
app.set 'view engine', 'jade'
app.use(stylus.middleware(
  src: __dirname + '/client',
  dest: __dirname + '/public',
  force: true,
  compile: compile
))

app.use '/public', express.static(path.join(__dirname + '/public'))

app.use '/component', express.static(path.join(__dirname + '/client/component'))
app.use '/style', express.static(path.join(__dirname + '/client/style'))



app.get '/', (req, res) ->
	res.render 'index'

app.get '/who', (req, res) ->
	res.render 'who'

app.get '/contact', (req, res) ->
	res.render 'contact'



server = app.listen 10, ->
	host = server.address().address
	port = server.address().port
	console.log 'Listening http://%s:%s', host, port