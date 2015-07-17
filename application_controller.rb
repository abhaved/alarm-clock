require 'bundler'
require_relative 'models/riddle.rb'
Bundler.require

class MyApp < Sinatra::Base
  
  get '/' do
    $question = riddle
    erb :index
  end
  
  post '/results' do
    riddle = params[:riddle]
    @answer = params[:answer]
    
    if answer_method(@answer, riddle) == true
      erb :results
    else 
<<<<<<< HEAD
      $question = riddle
      erb :wrong
    end
  end 
end
=======
      erb :index
    end
  end
  
  
  
  
end
>>>>>>> 7330372c5cd177c320bbb4d3046698b76f81b1d7
