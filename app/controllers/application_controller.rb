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
  
  # get '/sad'do
  #   erb :sad
  # end
  
  # get '/happy'do
  #   erb :happy
  # end
  
  # get '/stressed'do
  #   erb :stressed
  # end
  
  # get '/distracted'do
  #   erb :distracted
  # end
  
  # get '/tired'do
  #   erb :tired
  # end
  
  # get '/calm'do
  #   erb :calm
  # end
  
  get '/hotlines' do
    erb :hotlines
  end
  post '/stressed' do
    return erb :stressed
  end
  post '/happy' do 
    return erb :happy
  end
  post '/sad' do
    return erb :sad
  end
  post '/calm' do
    return erb :calm
  end
  post '/distracted' do
    return erb :distracted
  end
  post '/tired' do
    return erb :tired 
  end
  get '/hug'do
    return erb :hug
  end
  get '/rant_form'do
  erb :sad_form
end
  post '/rant_form'do
    return erb :sad_form
    @name=params[:name]
  @rant=params[:rant]
  end
  
post '/school_stress' do 
    return erb :school_stress
  end
end
