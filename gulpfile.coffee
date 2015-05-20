gulp        = require 'gulp'
connect     = require 'gulp-connect'
plumber     = require 'gulp-plumber'
watch       = require 'gulp-watch'
stylus      = require 'gulp-stylus'
jade        = require 'gulp-jade'
jade_real   = require 'jade'
coffee      = require 'gulp-coffee'
uglify      = require 'gulp-uglify'
minify_css  = require 'gulp-minify-css'
concat      = require 'gulp-concat'
gutil       = require 'gulp-util'

# Paths
current_dir = '.'
client_path = '/client'
app_path = '/app'

view_path = '/view'
view_model_path = '/view-model'
style_path = '/style'
component_path = '/component'

all_jade_files = '/**/*.jade'
all_coffee_files = '/**/*.coffee'
all_stylus_files = '/**/*.styl'

# RENDER COMPONENTS
gulp.task 'render_components' , ->
    render_in   = current_dir + component_path + '/component-header/index.jade'
    render_out = current_dir  + component_path + '/component-header'
    YOUR_LOCALS = {}
    gulp.src render_in
        .pipe jade(
            pretty: true
            jade: jade_real
            locals: YOUR_LOCALS
        )
        .pipe gulp.dest render_out
        gutil.log ''
        gutil.log 'from :', gutil.colors.yellow.bgBlack render_in
        gutil.log 'to : ', gutil.colors.yellow.bgBlack render_out
        gutil.log ''

gulp.task 'watch', ->
  gulp.watch [ current_dir + component_path + all_jade_files ], [ 'render_components' ]
