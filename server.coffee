express   = require 'express'
path    = require 'path'
assert    = require 'assert'
stylus    = require 'stylus'

app     = express()

compile = (str, path) ->
  stylus(str).set('filename', path)


app.set 'views', (path.join(__dirname + '/view'))
app.set 'view engine', 'jade'
app.use stylus.middleware
  src: __dirname + '/'
  dest: __dirname + '/'
  force: true
  compile: compile

app.use '/public', express.static(path.join(__dirname + '/public'))

app.use '/component', express.static(path.join(__dirname + '/component'))
app.use '/bower_components', express.static(path.join(__dirname + '/bower_components'))
app.use '/css', express.static(path.join(__dirname + '/css'))



app.get '/', (req, res) ->
  res.render 'index'


app.get '/component/component-app', (req, res) ->
  res.render '../component/component-app/index.jade'

app.get '/component/component-header', (req, res) ->
  res.render '../component/component-header/index.jade'

app.get '/component/component-gallery', (req, res) ->
  res.render '../component/component-gallery/index.jade'

app.get '/component/component-navigation', (req, res) ->
  res.render '../component/component-navigation/index.jade'

app.get '/who', (req, res) ->
  res.render 'who'

app.get '/contact', (req, res) ->
  res.render 'contact'



server = app.listen 10, ->
  host = server.address().address
  port = server.address().port
  console.log 'Listening http://%s:%s', host, port