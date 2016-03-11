module PrimeGrid
  module Utils
    class GridModelHelper

      def self.max_prime_grid_padding grid_model
        max_x_index = grid_model.column_headers.count - 1
        max_y_index = grid_model.row_headers.count - 1
        grid_model.value_at(max_x_index, max_y_index).to_s.size
      end

    end
  end
end