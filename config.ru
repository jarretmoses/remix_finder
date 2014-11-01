require './config/environment'

use Rack::MethodOverride
use Rack::Static, :root => 'public', :urls => ['/images', '/css']

# Mount the main controller as our Rack Application.
use RemixController
run ApplicationController
