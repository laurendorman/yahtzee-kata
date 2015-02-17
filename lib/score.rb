class Score

  def standard_scoring(dice)
    dice.inject(:+)
  end

  def full_house_scoring(dice)
    (dice.uniq.collect { |die| dice.count(die) }.sort == [2, 3]) ? 25 : 0
  end

  def small_straight_scoring(dice)
    (dice.sort[0..3] == [1,2,3,4] || dice.sort[1..4] == [1,2,3,4] || dice.sort[0..3] == [2,3,4,5] || dice.sort[1..4] == [2,3,4,5] || dice.sort[0..3] == [3,4,5,6] || dice.sort[1..4] == [3,4,5,6]) ? 30 : 0
  end

  def large_straight_scoring(dice)
    (dice.sort == [1,2,3,4,5] || dice.sort == [2,3,4,5,6]) ? 40 : 0
  end

  def yahtzee_scoring(dice)
    dice.uniq.count == 1
    dice.inject(:+)
  end

end