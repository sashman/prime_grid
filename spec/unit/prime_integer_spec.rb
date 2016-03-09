require 'rspec'
require "spec_helper"

RSpec.describe 'PrimeGeneration' do

  let(:subject) { Class.new { include PrimeGeneration } }

  it 'should generate 2 as first prime a number' do

    expect(subject.next_prime).to eq 2

  end
end