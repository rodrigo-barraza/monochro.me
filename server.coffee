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
  console.log 'testest'

app.use '/public', express.static(path.join(__dirname + '/public'))
app.use '/asset', express.static(path.join(__dirname + '/asset'))

app.use '/component', express.static(path.join(__dirname + '/component'))
app.use '/bower_components', express.static(path.join(__dirname + '/bower_components'))
app.use '/css', express.static(path.join(__dirname + '/css'))



app.get '/component/:component', (req, res) ->
  res.render '../component/' + req.params.component + '/index.jade',
    work:  'test'

app.get '/', (req, res) ->
  res.render 'index'

app.get '/:work', (req, res) ->
  res.render 'works/index.jade',
    work: -> 
      req.params.work

  console.log req.params.work

app.get '/who', (req, res) ->
  res.render 'who'

app.get '/contact', (req, res) ->
  res.render 'contact'

server = app.listen 10, ->
  host = server.address().address
  port = server.address().port
  console.log 'Listening http://%s:%s', host, port