class Score

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

  def standard_scoring(dice)
    dice.inject(:+)
  end

  def full_house_scoring(dice)
    (dice.uniq.collect { |die| dice.count(die) }.sort == [2, 3]) ? 25 : 0
  end

  def small_straight_scoring(dice) 
    (match_first(dice, [1,2,3,4] || [2,3,4,5] || [3,4,5,6]) || match_last(dice, [1,2,3,4] || [2,3,4,5] || [3,4,5,6])) ? 30 : 0
  end

  def large_straight_scoring(dice)
    (match_first(dice, [1,2,3,4,5]) || match_first(dice, [2,3,4,5,6])) ? 40 : 0
  end

  def yahtzee_scoring(dice)
    (dice.uniq.count == 1) ? 50 : 0
  end

end