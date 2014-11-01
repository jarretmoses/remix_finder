require 'json'
require_relative '../../lib/RemixRetriever.rb'
class RemixController < ApplicationController 
  include RemixRetriever
  set :views, Proc.new { File.join(root, "../views") }
  BASE_URL = 'https://soundcloud.com/'


  get '/' do
    erb :"search_form"
  end

  get '/search' do
    artist = params[:artist_name]
    song = params[:song_title]
    soundcloud_remixes = soundcloud(artist,song)
    
    binding.pry
  end
end
