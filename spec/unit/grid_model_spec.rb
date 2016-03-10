require 'rspec'
require "spec_helper"
require 'prime_grid/grid_data/grid_model'

describe 'GridModel' do

  describe '.create_product_grid' do

    context 'given column/row header values as an array of integers' do

      it 'should create an instance of GridModel with products as the cell values for array of size one' do

        subject = PrimeGrid::GridData::GridModel.create_product_grid [4]
        expect(subject.value_at 0, 0).to eq 16

      end

      it 'should create an instance of GridModel with products as the cell values for array with multiple elements' do

        subject = PrimeGrid::GridData::GridModel.create_product_grid [4, 1, 8]

        [
            [0, 0, 16],
            [1, 1, 1],
            [2, 2, 64],

            [0, 1, 4],
            [0, 2, 32],

            [1, 2, 8],
        ].each do | x, y, expected |
          expect(subject.value_at x, y).to eq expected
        end

      end

    end

  end
end