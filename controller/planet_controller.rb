class PlanetsController < Sinatra::Base

  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Enables the reloader so we dont need to keep restarting the server
  configure :development do
      register Sinatra::Reloader
  end

  get '/' do
    # @title = "working"
    @planets = Planet.all
    erb :'planets/index'
  end



end
