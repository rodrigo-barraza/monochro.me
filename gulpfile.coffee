gulp        = require 'gulp'
connect     = require 'gulp-connect'
plumber     = require 'gulp-plumber'
watch       = require 'gulp-watch'
stylus      = require 'gulp-stylus'
jade        = require 'gulp-jade'
coffee      = require 'gulp-coffee'
uglify      = require 'gulp-uglify'
minify_css  = require 'gulp-minify-css'
concat      = require 'gulp-concat'
gutil       = require 'gulp-util'

# Paths
current_dir = '.'
client_path = '/client'
public_path = '/public'
server_path = '/server'
view_path = '/view'
view_model_path = '/view-model'
style_path = '/style'

all_jade_files = '/**/*.jade'
all_coffee_files = '/**/*.coffee'
all_stylus_files = '/**/*.styl'



# RENDER VIEW-MODEL
gulp.task 'render_view_model', ->
    render_in = current_dir + client_path + view_model_path + all_coffee_files
    render_out = current_dir + public_path + view_model_path
    gulp.src render_in
        .pipe coffee(bare: true).on('error', gutil.log) 
        .pipe gulp.dest render_out
        gutil.log ''
        gutil.log 'from :', gutil.colors.yellow.bgBlack render_in
        gutil.log 'to : ', gutil.colors.yellow.bgBlack render_out
        gutil.log ''

# RENDER VIEW
gulp.task 'render_view' , ->
    render_in = current_dir + client_path + view_path + all_jade_files
    render_out = current_dir + public_path + view_path
    gulp.src render_in
        .pipe jade(pretty: true)
        .pipe gulp.dest render_out
        gutil.log ''
        gutil.log 'from :', gutil.colors.yellow.bgBlack render_in
        gutil.log 'to : ', gutil.colors.yellow.bgBlack render_out
        gutil.log ''

# RENDER STYLE
gulp.task 'render_style', ->
    render_in = current_dir + client_path + style_path + all_stylus_files
    render_out = current_dir + public_path + style_path
    gulp.src render_in
        .pipe concat('./global.styl')
        .pipe stylus()
        .pipe minify_css({keepBreaks:true})
        .pipe gulp.dest render_out
        gutil.log ''
        gutil.log 'from :', gutil.colors.yellow.bgBlack render_in
        gutil.log 'to : ', gutil.colors.yellow.bgBlack render_out
        gutil.log ''

# RENDER SERVER
gulp.task 'render_server', ->
    render_in = current_dir + client_path + server_path + all_coffee_files
    render_out = current_dir + server_path
    gulp.src render_in
        .pipe coffee(bare: true).on('error', gutil.log) 
        .pipe gulp.dest('./server')
        gutil.log ''
        gutil.log 'from :', gutil.colors.yellow.bgBlack render_in
        gutil.log 'to : ', gutil.colors.yellow.bgBlack render_out
        gutil.log ''

gulp.task 'watch', ->
  gulp.start ['render_view_model', 'render_view', 'render_style', 'render_server']
  gulp.watch [ client_path + server_path + all_coffee_files ], [ 'render_server' ]
  gulp.watch [ client_path + view_path + all_jade_files ], [ 'render_view' ]
  gulp.watch [ client_path + style_path + all_stylus_files ], [ 'render_style' ]
  gulp.watch [ server_path + view_model_path + all_coffee_files ], [ 'render_view_model' ]

gulp.task 'run', [
  'render_view_model'
  'render_view'
  'render_style'
]
