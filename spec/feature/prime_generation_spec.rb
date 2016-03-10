require 'rspec'
require "spec_helper"

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

end