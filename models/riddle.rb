@riddles = [["What travels around the world but stays in one spot?", "stamp"], ["What can you catch but not throw?", "cold"], ["What is so delicate that saying its name breaks it?", "silence"]]

def riddle
  prng = Random.new
  @rand_num=prng.rand(0...@riddles.length)
  @num = @rand_num
  return @riddles[@num][0]
end

def ask_riddle
  puts riddle
end

def answer_method
  unless @answer[:answer].include?(@riddles[@num][1])
    puts "try again!"
    ask_riddle
  end
  puts "correct!"
end

riddle
ask_riddle
