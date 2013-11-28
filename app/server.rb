require "sinatra/reloader" if development?


class SinatraApp < Sinatra::Base
  helpers ExampleHelpers

  get "/" do
    env_config = CONFIG['key']
    helper = helper_method

    "Hello World! #{env_config} #{helper}"
  end
end