require 'spec_helper'
require_relative '../lib/yahtzee'

describe 'Calculate' do
	it 'adds die' do
		expect(calculate([1,1,1,1,1])).to eq(5)
	end
end