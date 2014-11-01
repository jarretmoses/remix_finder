require 'pry'
require 'open-uri'
require 'nokogiri'
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    redirect
  end

end