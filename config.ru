require 'dashing'

configure do
  set :auth_token, 'b9d95727-bf75-419e-95e2-004295544c1a'
  set :default_dashboard, 'demo_1' #<==== set default dashboard like this
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