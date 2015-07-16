require 'bundler'
require_relative 'models/alarm_clock.rb'
Bundler.require

class MyApp < Sinatra::Base
  
  get '/' do  #/about_me == www.mywebsite.com/about_me / == www.mywebsite.com/

    erb :index
  end  
  
  
end