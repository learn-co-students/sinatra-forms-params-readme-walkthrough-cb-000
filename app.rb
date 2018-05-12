require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # add a corresponding route for the form
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
  # All user submitted data will appear in a params hash accessible throughout our Sinatra controllers.
  # The name attribute of an <input> corresponds to a key in the params hash for that data
  # If you create a text field input with <input type="text" name="favorite_food">, whenever the user submits that form, you will be able to access the data entered into the Favorite Foods text box via params[:favorite_food]
  # we expect our params hash to look like this:
=begin
  params = {
    :name => "Sam",
    :favorite_food => "Green Eggs and Ham"
  }
=end
  
end
