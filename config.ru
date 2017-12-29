require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/planet.rb'
require_relative './controller/planet_controller.rb'

use Rack::MethodOverride

run PlanetsController
