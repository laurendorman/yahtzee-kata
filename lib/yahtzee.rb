def adds(dice)
  dice.inject(:+)
end

def aces(dice)
  dice.select { |die| die == 1 }.inject(:+)
end

def twos(dice)
  dice.select { |die| die == 2 }.inject(:+)
end

def threes(dice)
  dice.select { |die| die == 3 }.inject(:+)
end

def fours(dice)
  dice.select { |die| die == 4 }.inject(:+)
end

def fives(dice)
  dice.select { |die| die == 5 }.inject(:+)
end

def sixes(dice)
  dice.select { |die| die == 6 }.inject(:+)
end

def three_of_a_kind(dice)
  dice.find { |die| dice.count(die) == 3 }
end