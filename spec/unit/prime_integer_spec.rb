require 'rspec'

RSpec.describe 'Integer' do

  it 'should generate 2 as first prime a number' do

    expect(Integer.next_prime).to eq 2

  end
end