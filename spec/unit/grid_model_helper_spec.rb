require 'rspec'
require "spec_helper"
require 'prime_grid/grid_data/grid_model'
require 'prime_grid/utils/grid_model_helper'

describe 'GridModelHelper' do

  describe '.max_prime_grid_padding' do

    it 'should return the string length of the bottom left cell value' do

      model = double(PrimeGrid::GridData::GridModel)
      expect(model).to receive(:column_headers).and_return([])
      expect(model).to receive(:row_headers).and_return([])
      expect(model).to receive(:value_at).and_return(123456)

      expect(PrimeGrid::Utils::GridModelHelper.max_prime_grid_padding model).to eq 6

    end

  end

end