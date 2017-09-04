require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    @food = params[:favorite_food]
    @name = params[:name]
    "My name is #{@name}, and I love #{@food}"
  end

end
