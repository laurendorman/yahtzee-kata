def calculate(dice)
  dice.inject(:+)
end

def aces(dice)
   dice.select { |ace| ace == 1 }.inject(:+)
end

def dueces(dice)
   dice.select { |duece| duece == 2 }.inject(:+)
end