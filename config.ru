require 'dashing'

configure do
  set :auth_token, '916f33b1-fda3-4300-83c5-9404c9985a50'
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