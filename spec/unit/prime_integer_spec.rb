require 'rspec'
require "spec_helper"

RSpec.describe 'PrimeGeneration' do

  let(:subject) { (Class.new { include PrimeGrid::Integer::PrimeGeneration }).new }

  describe '.get_primes' do

    it 'should generate 2 as a first prime number' do

      expect(subject.get_primes(1)).to eq 2

    end

    it 'should generate 2, 3, 5 as first three prime numbers' do

    end

  end

end