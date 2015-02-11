def calculate(dice)
  dice.inject(:+)
end

def aces(dice)
   dice.select { |ace| ace == 1 }.inject(:+)
end