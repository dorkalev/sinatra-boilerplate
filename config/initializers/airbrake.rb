require 'sinatra'
require 'airbrake'

configure :production do
  Airbrake.configure do |config|
    config.api_key = 'AIRBRAKE API KEY'
  end
  use Airbrake::Rack
  enable :raise_errors
end

