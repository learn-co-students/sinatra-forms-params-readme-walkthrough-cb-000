require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
	  name = params[:name]
	  food = params[:favorite_food]
	  "My name is #{name}, and I love #{food}"
  end

  # Add your post route and action below


end
