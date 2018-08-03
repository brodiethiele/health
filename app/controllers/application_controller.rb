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
  
  get '/distracted'do
    erb :distracted
  end
  
  get '/tired'do
    erb :tired
  end
  
  get '/calm'do
    erb :calm
  end
  
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
    erb :hug
  end
  post '/hug' do
    return erb :hug
  end
  post '/rant_form'do
    @name=params[:name]
  @rant=params[:rant]
  "#{@name}:#{@rant}"
  erb :sad_form
end
  get '/rant_form'do
  erb :sad_form
end
post '/hotlines' do
   return erb :hotlines
  end

post '/school_stress' do
   return erb :school_stress
 end  
 post '/' do
   return erb :index
 end
 post '/quote' do
   return erb :quote
 end
end
