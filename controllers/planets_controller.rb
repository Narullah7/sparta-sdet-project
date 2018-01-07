require 'sinatra/base'
require 'sinatra/flash'

class PlanetsController < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }


  get '/' do
    @nasa_api = JSON.parse(HTTParty.get("https://api.nasa.gov/neo/rest/v1/feed?end_date=2018-01-06&detailed=true&api_key=Ltm5fFmZcRXQf65mldfwWTEtmkU0fsKcUf6OY2oh").body)

    erb :'planets/NasaApi'
  end

  get '/planets' do
    @planets = Planet.all

    erb :'planets/index'
  end

  get '/planets/new' do
    @planets = Planet.new

    erb :'planets/new'
  end

  get '/:id' do

    # Get the ID from the params and turn it in to an integer
    id = params[:id].to_i

    # Use the find Class method in post to retrieve the post we need and assign it to an instance variable post
    @post = Planet.find(id)

    # Render the show template
    erb :'planets/show'

  end

  # A post request to / will create a new post with the imformation the user entered which is stored in the params
  post '/' do

    # Create a new instance of our Post class
    post = Planet.new

    # Becuase we set the title and body in the models attr_accessor we can edit them from outside the object. Here we are setting the values of the title and body to be the information the user put in the form
    post.title = params[:title]
    post.body = params[:body]
    post.body2 = params[:body2]
    post.body3 = params[:body3]
    post.image = params[:image]
    post.image2 = params[:image2]

    # Save is a instance method that we can use to save the new Post into the db
    post.save

    flash[:notice] = "You have successfully added a new planet"

    # After the save we request the / route and display all the posts
    redirect "/planets"
  end


  # A put request to the /:id will will update an existing post
  put '/planets/:id'  do

    # The id of the post we want to update, we pulled this information from request params
    id = params[:id].to_i

    # We use the find Class method to get us the post we need to update
    post = Planet.find(id)

    # Manipulate the the intance variables to the new data the user entered
    post.id = params[:id]
    post.title = params[:title]
    post.body = params[:body]
    post.body2 = params[:body2]
    post.body3 = params[:body3]
    post.image = params[:image]
    post.image2 = params[:image2]

    # Use the instance method save to update the post
    post.save

    flash[:notice] = "You have successfully updated a planet"

    # Redirect to / to show all the posts
    redirect '/'

  end

  put '/:id' do

    # The id of the post we want to update, we pulled this information from request params
    id = params[:id].to_i

    # We use the find Class method to get us the post we need to update
    post = Planet.find(id)

    # Manipulate the the intance variables to the new data the user entered
    post.id = params[:id]
    post.title = params[:title]
    post.body = params[:body]
    post.body2 = params[:body2]
    post.body3 = params[:body3]
    post.image = params[:image]
    post.image2 = params[:image2]

    # Use the instance method save to update the post
    post.save

    flash[:notice] = "You have successfully updated a planet"

    # Redirect to / to show all the posts
    redirect '/planets'

  end

  delete '/:id' do

    # The id of the post we want to delete, we pulled this information from request params
    id = params[:id].to_i

    # We can use the Class method destroy to remove the post from the db
    Planet.destroy(id)

    flash[:notice] = "You have successfully deleted a planet"

    # Redirect to / to show all the posts
    redirect "/planets"

  end

  get '/:id/edit' do


    # The id of the post we want to update, we pulled this information from request params
    id = params[:id].to_i

    # Use the find Class method in post to retrieve the post we need and assign it to an instance variable post
    @planets = Planet.find(id)

    # Render the edit template
    erb :'planets/edit'

  end



end
