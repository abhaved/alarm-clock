require 'bundler'
require_relative 'models/riddle.rb'
require_relative 'models/alarm.rb'
Bundler.require

class MyApp < Sinatra::Base
  
  get '/' do
    @time = user_time
    erb :index
  end
  
  get '/video' do  #/about_me == www.mywebsite.com/about_me / == www.mywebsite.com/
    @question = riddle
    erb :video
  end  
  
  
end