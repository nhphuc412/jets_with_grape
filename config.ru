# This file is used by Rack-based servers to start the application.

require "jets"

require_relative 'app/racks/grape_app'

Jets.boot

instance = Rack::Builder.new do
  map '/api' do
    run GrapeApp
  end
  run Jets.application
end.to_app

run instance
