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

  def match_first(left, right)
    sorted_dice = left.sort
    count = right.length-1
    sorted_dice[0..count] == right
  end

  def match_last(left, right)
    sorted_dice = left.sort
    count = right.length-1
    sorted_dice[1..count] == right
  end

  def small_straight(dice)
    (match_first(dice, [1,2,3,4] || [2,3,4,5] || [3,4,5,6]) || match_last(dice, [1,2,3,4] || [2,3,4,5] || [3,4,5,6]))
    # Needs to return score of 30
  end

  def large_straight(dice)
    (match_first(dice, [1,2,3,4,5]) || match_first(dice, [2,3,4,5,6]))
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