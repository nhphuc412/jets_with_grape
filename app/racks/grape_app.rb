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
