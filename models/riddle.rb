$riddles = [["What travels around the world but stays in one spot?", "stamp"], ["What can you catch but not throw?", "cold"], ["What is so delicate that saying its name breaks it?", "silence"], ["What occurs once in a minute, twice in a moment and never in one thousand years?", "M"], ["How many months have 28 days?", "12"], ["Give me food, and I will live; give me water, and I will die. What am I?", "fire"], ["The man who invented it doesn't want it. The man who bought it doesn't need it. The man who needs it doesn't know it. What is it?", "coffin"], ["Give me food, and I will live; give me water, and I will die. What am I?", "fire"], ["What's the symbol for iron?", "Fe"], ["What's the first name of Shakespeare?", "William"], ["Where is Notre Dame?", "Paris"], ["Which planet is closest to the sun?", "Mercury"], ["What nation produces two thirds of the world's vanilla?", "Madagascar"], ["What's the most malleable metal?", "gold"], ["What measure of energy comes from the Latin word meaning 'heat'?", "calorie"]]

$riddles = [["What travels around the world but stays in one spot?", "stamp"], ["What can you catch but not throw?", "cold"], ["What is so delicate that saying its name breaks it?", "silence"], ["What occurs once in a minute, twice in a moment and never in one thousand years?", "M"], ["How many months have 28 days?", "12"], ["Give me food, and I will live; give me water, and I will die. What am I?", "fire"], ["The man who invented it doesn't want it. The man who bought it doesn't need it. The man who needs it doesn't know it. What is it?", "coffin"], ["Give me food, and I will live; give me water, and I will die. What am I?", "fire"]]

@prng = Random.new
@length = $riddles.length
$num=@prng.rand(0..@length)

def riddle  
  return $riddles[$num][0]    
end

@prng = Random.new
@length = $riddles.length
$num=@prng.rand(0..@length)

def riddle  
  return $riddles[$num][0]    
end

def answer_method(answer, riddle)
  $riddles.each do |riddle_set|
    if riddle == riddle_set[0]
      return answer.include?(riddle_set[1])
    end
  end
end

def answer_method(answer, riddle)
  $riddles.each do |riddle_set|
    if riddle == riddle_set[0]
      return answer.include?(riddle_set[1])
    end
  end
end
