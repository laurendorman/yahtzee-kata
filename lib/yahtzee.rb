def calculate(dice)
  dice.inject(:+)
end

def aces(dice)
   dice.select { |ace| ace == 1 }.inject(:+)
end

def twos(dice)
   dice.select { |two| two == 2 }.inject(:+)
end

def threes(dice)
  dice.select { |three| three == 3 }.inject(:+)
end