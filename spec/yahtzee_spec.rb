require 'spec_helper'
require_relative '../lib/yahtzee'

describe 'Calculate' do
  it 'adds die' do
		expect(calculate([1,1,1,1,1])).to eq(5)
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
end