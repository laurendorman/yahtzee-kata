require 'spec_helper'
require_relative '../lib/yahtzee'

describe 'calculate' do
  it 'adds all die' do
		expect(adds([1,2,3,4,5])).to eq(15)
	end
  it 'only add aces' do
    expect(aces([1,1,2,2,3])).to eq(2)
  end
  it 'only add twos' do
    expect(twos([1,1,2,2,3])).to eq(4)
  end
  it 'only add threes' do
    expect(threes([3,3,3,4,5])).to eq(9)
  end
  it 'only add fours' do
    expect(fours([4,4,5,5,6])).to eq(8)
  end
  it 'only add fives' do
    expect(fives([4,4,5,5,6])).to eq(10)
  end
  it 'only add sixes' do
    expect(sixes([3,4,5,6,6])).to eq(12)
  end
  it 'three of a kind' do
    expect(three_of_a_kind([4,4,4,6,6])).to eq(4)
  end
  it 'four of a kind' do
    expect(four_of_a_kind([1,1,1,1,5])).to eq(1)
  end
end