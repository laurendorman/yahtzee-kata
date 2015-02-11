require 'spec_helper'
require_relative '../lib/yahtzee'

describe 'Calculate' do
	it 'adds die' do
		expect(calculate([1,1,1,1,1])).to eq(5)
	end
  it 'only add aces' do
    expect(aces([1,1,2,2,3])).to eq(2)
  end
end