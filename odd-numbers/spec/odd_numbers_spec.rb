require 'spec_helper'
require 'odd_numbers'

describe OddNumberGenerator do

  it "#collect_odd_numbers_between" do
    OddNumberGenerator.new
    
    collection = OddNumberGenerator.collect_odd_numbers_between(0,1337)
   
    expect(collection[3].odd?).to eq(true) 
  end

end
