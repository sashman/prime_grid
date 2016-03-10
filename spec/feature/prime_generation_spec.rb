require 'rspec'
require "spec_helper"
require 'prime_grid'

RSpec.describe 'Prime number generation' do

  before(:each) do

    class Integer

      include PrimeGrid::Integer::PrimeGeneration

      def primes
        take_primes self
      end

    end

  end

  it "should generate 1 prime number" do

    expect(1.primes).to eq [2]

  end

  it "should generate 3 prime numbers" do

    expect(3.primes).to eq [2, 3, 5]

  end


  it "should generate 0 prime numbers" do

    expect(0.primes).to eq []

  end

end