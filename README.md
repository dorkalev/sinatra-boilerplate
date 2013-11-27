== Sintara Boilerplate

A Sinatra application skeleton to start your new project with.

== What Does It Offer?

1. A Ruby on Rails like directory structure to organize your project.
2. A app loader that will load your Sinatra environment.
3. Rspec + Guard + Spork configured and ready to fire so you can test your app.
4. A Sinatra console in which you can interactively work with your app.
5. Multiple environments configuration support.
6. Unicorn configuration template.
7. Capistrano deployment template.
8. God configuration that will keep your site always up.
8. Airbrake integration for error reporting.

== Directory Structure

![Directory Structure](https://docs.google.com/drawings/d/1OCudHPpik4XHbPQ9v4e_4cD724Se8Alr7aRXtRtbJ-A/pub?w=830&amp;h=1116)

== App Loader

The file `load_app.rb` in the root loads all the files needed to have a working
environment.

== Testing Infrastructure

RSpec, Guard and Spork gems are in the Gemfile.
RSpec includes `Rack::Test` to enable Sinatra testing.
An example for server, lib and helpers specs.
Spork configuration to reload files between specs run.

== Console

Run `./console` from your app root dir to get an IRB in which your Sinatra
environment is already loaded.

== Environments Configuration

Put your environment specific configuration files inside `config/environments/<your_env_name>.yml`.
The configuration will be accessible via `CONFIG['key_name']` from anywhere in your app.

== Unicorn Configuration

`config/unicorn.rb.erb` is a deploy-ready configuration template which will
be resolved by Capistrano upon deployment.
Just fill in the port you want to listen to and it's ready to go.

== Capistrano Deployment

`config/deploy.rb` is the main Capistrano deploy script. It has built in
support for multiple stages deployment.
You will have to fill in your application name, github repository and some
other basic parameters.
You will also have to fill your remote server ip on `config/deploy/production.rb`

