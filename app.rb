require_relative 'config/environment'

class App < Sinatra::Base
  FOOD_ACTION = '/food'
  NAME_SYMBOL  = :name
  FAVORITE_FOOD_SYMBOL = :favorite_food

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post FOOD_ACTION do
    "My name is #{params[NAME_SYMBOL]}, and I love #{params[FAVORITE_FOOD_SYMBOL]}"
  end

end
