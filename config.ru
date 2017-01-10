require 'sinatra/base'
require 'sinatra/reloader'
Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

map( '/index' ) { run IndexController }
map( '/' ) { run ApplicationController }
