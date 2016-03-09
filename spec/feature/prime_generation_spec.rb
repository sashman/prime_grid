require 'rspec'
require "spec_helper"

RSpec.describe 'Prime number generation' do

  it "should generate 1 prime number" do

    expect(1.primes).to eq 2

  end

end