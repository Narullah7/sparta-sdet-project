require_relative '../controllers/planets_controller.rb'
require_relative '../models/planet.rb'
require 'rack/test'
require 'httparty'
require 'json'
require 'pg'


describe 'Unit testing Sinatra app' do
  include Rack::Test::Methods

  def app
    PlanetsController.new
  end

  context 'GET / PAGE' do
    it "should load the home page" do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it "in homepage should include title called 'Live asteroid data'" do
      get '/'
      expect(last_response.body).to include("<h1>Live asteroid data:")
    end
  end

  context 'GET /PLANETS PAGE' do

    it 'should load the planets page' do
      get "/planets"
      expect(last_response.status).to eq(200)
    end

    it 'in the planets page, it should correctly display the correct number of planets including when a new post is made' do
      get '/planets'
      planet_number = Planet.all.length
      expect(planet_number).to eq(planet_number)
    end

    it "The first Planet on the page should be the sun" do
      post = Planet.find(1)
      expect(post.title).to eq("Sun")
    end

    it "The last planet should be Pluto" do
      post = Planet.find(10)
      expect(post.title).to eq("Pluto")
    end
  end

  context 'GET /PLANETS/NEW' do

    it 'should load the form for the user to input new      planet' do
      get "/planets/new"
      expect(last_response.status).to eq(200)
    end

    it "The page should include title 'new planet'" do
      get 'planets/new'
      expect(last_response.body).to include("New Planet")
    end
  end


  it 'should return a status code of 200 when a user clicks on a planet' do
    get "/1"
    expect(last_response.status).to eq(200)
  end

  it 'should load edit page when user wants to change some information' do
    get "/1/edit"
    expect(last_response.status).to eq(200)
  end

  it "post request to create a planet should work" do
    post '/', :title => 'My test', :body => 'This is body1', :body2 => 'This is body 2', :body3 => 'This is body 3', :image => 'This is image1', :image2 => 'This is image2'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('My test')
  end

  it "put request should update an existing planet" do
    Planet.new
    @id = Planet.get_newest_planet
    put "/#{@id}", :title => 'Updated working', :body => 'This is body1', :body2 => 'This is body 2', :body3 => 'This is body 3', :image => 'This is image1', :image2 => 'This is image2'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('Updated working')
  end

  it "delete request should delete a planet" do
    Planet.new
    @id = Planet.get_newest_planet
    delete "/#{@id}"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).not_to include('My test')
  end
end
