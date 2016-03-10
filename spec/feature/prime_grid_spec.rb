require 'rspec'
require "spec_helper"
require 'prime_grid'

RSpec.describe 'Prime number grid' do

  let(:controller) { PrimeGrid::Controllers::PrimeGridController.new }

  it "Given a number of primes, create a grid model" do

    grid = controller.prime_grid 3
    expect(grid.column_headers).to eq [2, 3, 5]
    expect(grid.row_headers).to eq [2, 3, 5]

    expect(grid.value_at 0, 0).to eq 4
    expect(grid.value_at 0, 1).to eq 6
    expect(grid.value_at 0, 2).to eq 10

  end


end