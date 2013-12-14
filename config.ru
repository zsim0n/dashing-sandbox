require 'dashing'

configure do
  set :auth_token, 'b8287e1d-2de0-4cfd-9035-0be58f0ad2ea'
  set :default_dashboard, 'demo_simple' #<==== set default dashboard like this
  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application