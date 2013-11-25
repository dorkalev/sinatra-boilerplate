require "sinatra/reloader" if development?

get "/" do
  string = CONFIG['key']
  "Hello World! #{string}"
end
