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
      $question = riddle
      erb :wrong
    end
  end 
end
