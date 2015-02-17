class Score

  def standard_scoring(score)
    score.inject(:+)
  end

  def full_house_scoring(score)
    score.uniq.collect { |die| score.count(die) }.sort == [2, 3]
    return 25
  end

end