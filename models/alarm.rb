require 'time'

def user_time
  puts "Please enter a number of seconds."
  @user_time = gets.chomp
  puts timer
  puts "Time's up"
end

def timer
  start_time = Time.now
  @end_time = start_time + (@user_time).to_i
    while Time.now < @end_time
      sleep @user_time.to_i
    end
end
