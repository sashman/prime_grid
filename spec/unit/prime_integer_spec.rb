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

end