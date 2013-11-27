require 'sinatra'
require 'airbrake'

configure :production do
  Airbrake.configure do |config|
    config.api_key = '[TODO] Airbrake Key'
  end
  use Airbrake::Rack
  enable :raise_errors
end

