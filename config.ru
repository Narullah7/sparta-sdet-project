require 'sinatra'
require 'httparty'
require 'json'
require 'rspec'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/planet'
require_relative './controllers/planets_controller'

use Rack::MethodOverride

run PlanetsController
