require 'rspec'
require "spec_helper"

RSpec.describe 'PrimeGeneration' do

  let(:subject) { (Class.new { include PrimeGrid::Integer::PrimeGeneration }).new }

  describe '.next_prime' do

    it 'should generate 2 as a first prime number' do

      expect(subject.next_prime).to eq 2

    end

    it 'should generate 2, 3, 5 as first three prime numbers' do

      current_subject = subject

      expect(current_subject.next_prime).to eq 2
      expect(current_subject.next_prime).to eq 3
      expect(current_subject.next_prime).to eq 5

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

  end

end