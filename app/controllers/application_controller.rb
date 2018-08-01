require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/sad'do
    erb :sad
  end
  
  get '/happy'do
    erb :happy
  end
  
  get '/stressed'do
    erb :stressed
  end
end
