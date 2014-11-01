# This file will load our environment.

# Make sure our default SINATRA_ENV is development if it has not been set
# by the global environment.
ENV['SINATRA_ENV'] ||= "development"

# It's goals are:
# 1. To load all gems via bundler.
# 2. To establish a database connection or Sequel to use.
# 3. To load all the files of our application, models, concerns, controllers

# Load Bundler
require 'bundler/setup'  
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'config'
require_all 'app'

