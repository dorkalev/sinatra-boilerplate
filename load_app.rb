ROOT_PATH = File.expand_path("../", __FILE__)
$LOAD_PATH.unshift("#{ROOT_PATH}/lib", "#{ROOT_PATH}/app")

%w{config/initializers lib app}.each do |dir|
  Dir["#{File.dirname(__FILE__)}/#{dir}/**/*.rb"].each { |f| puts f ;require(f) }
end
