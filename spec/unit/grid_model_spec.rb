require 'rspec'
require "spec_helper"
require 'prime_grid/grid_data/grid_model'

describe 'GridModel' do

  describe '.create_product_grid' do

    context 'given column/row header values as an array of integers' do

      it 'should create an instance of GridModel with products as the cell values' do

        subject = PrimeGrid::GridData::GridModel.create_product_grid [4]
        expect(subject.value_at 0, 0).to eq 16

      end

    end

  end
end