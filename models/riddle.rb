@riddles = [["What travels around the world but stays in one spot?", "stamp"], ["What can you catch but not throw?", "cold"], ["What is so delicate that saying its name breaks it?", "silence"]]

def riddle
  prng = Random.new
  @rand_num=prng.rand(0...@riddles.length)
  @num = @rand_num
  puts @riddles[@num][0]
end



def answer_method
  until @answer.include?(@riddles[@num][1])
    puts "try again!"
    riddle
    @answer = gets.chomp
end
    puts "correct!"
end

riddle

@answer = gets.chomp

answer_method
