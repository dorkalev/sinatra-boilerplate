require 'rack/test'
require 'rubygems'
require 'spork'
require 'rspec'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  
  ENV["RACK_ENV"] ||= "test"
  $LOAD_PATH.unshift(File.dirname(__FILE__))

  RSpec.configure do |config|
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.run_all_when_everything_filtered = true
    config.filter_run :focus

    # Run specs in random order to surface order dependencies. If you find an
    # order dependency and want to debug it, you can fix the order by providing
    # the seed, which is printed after each run.
    #     --seed 1234
    config.order = 'random'

  end


  # Sinatra specs config
  # --------------------
  module RSpecMixin
    include Rack::Test::Methods
    def app() Sinatra::Application end
  end
  RSpec.configure { |c| c.include RSpecMixin }
end

Spork.each_run do
  load File.expand_path("../../load_app.rb", __FILE__)

  Dir["./spec/support/**/*.rb"].sort.each {|f| load f}
end

