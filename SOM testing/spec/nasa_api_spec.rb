require 'spec_helper'
require 'json'
require 'httparty'

describe 'Testing the SOM' do
  include HTTParty

  before(:all) do
    @test_api = NasaApi.new.get_api_feed("2018-01-08")
  end

  it 'Api should return in hash form' do
    expect(@test_api).to be_kind_of(Hash)
  end


end
