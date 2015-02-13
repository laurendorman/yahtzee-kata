require 'spec_helper'
require_relative '../lib/yahtzee'

describe Game do
  it 'adds all die' do
  		expect(subject.adds([1,2,3,4,5])).to eq(15)
	end
  it 'only add aces' do
    expect(subject.aces([1,1,2,2,3])).to eq(2)
  end
  it 'only add twos' do
    expect(subject.twos([1,1,2,2,3])).to eq(4)
  end
  it 'only add threes' do
    expect(subject.threes([3,3,3,4,5])).to eq(9)
  end
  it 'only add fours' do
    expect(subject.fours([4,4,5,5,6])).to eq(8)
  end
  it 'only add fives' do
    expect(subject.fives([4,4,5,5,6])).to eq(10)
  end
  it 'only add sixes' do
    expect(subject.sixes([3,4,5,6,6])).to eq(12)
  end
  it 'three of a kind' do
    expect(subject.three_of_a_kind([4,4,6,6,4])).to eq(4)
  end
  it 'four of a kind' do
    expect(subject.four_of_a_kind([1,1,5,1,1])).to eq(1)
  end
  it 'full house' do
    expect(subject.full_house([3,4,4,4,3])).to eq(true)
  end
  it 'small straight' do
    expect(subject.small_straight([2,4,1,3,6])).to eq(true)
  end
end