require 'spec_helper'
require_relative '../lib/score'

describe Score do
  it 'three of a kind scoring' do
    expect(subject.standard_scoring([2,2,2,4,5])).to eq(15)
  end
  it 'four of a kind scoring' do
    expect(subject.standard_scoring([3,3,3,3,5])).to eq(17)
  end
  it 'full house scoring' do
    expect(subject.full_house_scoring([1,2,3,4,5])).to eq(25)
  end
end