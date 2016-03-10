require 'rspec'
require "spec_helper"

RSpec.describe 'PrimeGeneration' do

  let(:subject) { (Class.new { include PrimeGrid::Integer::PrimeGeneration }).new }

  describe '.take_primes' do

    it 'should generate array with first element 2 when one prime is requested' do

      expect(subject.take_primes(1)).to eq [2]

    end

  end

  describe '.next_prime' do

    it 'should generate 2 as a first prime number' do

      expect(subject.next_prime).to eq 2

    end

    it 'should generate 2, 3, 5 as first three consecutive prime numbers' do

      expect(subject.next_prime).to eq 2
      expect(subject.next_prime 2).to eq 3
      expect(subject.next_prime 3).to eq 5

    end

    it 'should generate multiple consecutive prime numbers' do

      primes = [3, 5, 7, 11, 13, 17, 19, 23, 29]

      last_prime = subject.next_prime

      primes.each do |prime_number|

        last_prime = subject.next_prime last_prime
        expect(last_prime).to eq prime_number

      end

    end

  end

  describe '.is_prime?' do

    it 'should return true for 2' do

      expect(subject.is_prime? 2).to be true

    end

    it 'should return true for 3' do

      expect(subject.is_prime? 3).to be true

    end

    it 'should return true for multiple prime numbers' do

      primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

      primes.each do |prime_number|
        expect(subject.is_prime? prime_number).to be true
      end

    end

    it 'should return false for 4' do

      expect(subject.is_prime? 4).to be false

    end

    it 'should return false for 360' do

      expect(subject.is_prime? 360).to be false

    end

    it 'should return false for 1' do

      expect(subject.is_prime? 1).to be false

    end

    it 'should return false for 0' do

      expect(subject.is_prime? 0).to be false

    end

    it 'should return false for negative numbers' do

      expect(subject.is_prime? -1).to be false
      expect(subject.is_prime? -200).to be false

    end

    it 'should raise an error for non integer input numbers' do

      expect{subject.is_prime? 3.123}.to raise_error ArgumentError
      expect{subject.is_prime? 'string'}.to raise_error ArgumentError
      expect{subject.is_prime? true}.to raise_error ArgumentError
      expect{subject.is_prime? nil}.to raise_error ArgumentError

    end

  end

end