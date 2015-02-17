class Game

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

  def four_of_a_kind(dice)
    dice.find { |die| dice.count(die) == 4 }
  end

  def full_house(dice)
     dice.uniq.collect { |die| dice.count(die) }.sort == [2, 3]
     # Needs to return score of 25
  end

  def small_straight(dice)
    dice.sort[0..3] == [1,2,3,4] || dice.sort[1..4] == [1,2,3,4] || dice.sort[0..3] == [2,3,4,5] || dice.sort[1..4] == [2,3,4,5] || dice.sort[0..3] == [3,4,5,6] || dice.sort[1..4] == [3,4,5,6]
    # Needs to return score of 30
  end

  def large_straight(dice)
    dice.sort == [1,2,3,4,5] || dice.sort == [2,3,4,5,6]
    # Needs to return score of 40 
  end

  def yahtzee(dice)
    dice.uniq.count == 1
    # Needs to return score of 50 
  end

  def chance(dice)
    dice.inject(:+)
  end

end

# class Score

#   def standard_scoring(dice)
#     dice.inject(:+)
#   end

#   def full_house_scoring(dice)
#     dice == 25
#   end

#   def small_straight_scoring(dice)
#     dice == 30
#   end
    
#   def large_straight_scoring(dice)
#     dice == 40
#   end

#   def yahtzee_scoring(dice)
#     dice == 50
#   end

#   def chance_scoring(dice)
#     dice.inject(:+)
#   end

# end