require "grape"

class GrapeApp < Grape::API
  format :json
  get "/" do
    "GrapeApp home"
  end

  get :hello do
    { hello: 'world' }
  end

  post :hello do
    { hello: 'world!' }
  end
end

if __FILE__ == $0
  Rack::Server.start(app: GrapeApp)
end
