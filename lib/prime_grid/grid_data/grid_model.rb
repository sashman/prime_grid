module PrimeGrid
  module GridData
    class GridModel

      def initialize grid_data
        @grid_data = grid_data
      end

      def self.create_product_grid header_values

        product_data = Array.new(header_values.count) { |y| Array.new(header_values.count) {|x|
          header_values[x] * header_values[y]
        } }

        GridModel.new product_data

      end

      def value_at x, y
        @grid_data[y][x]
      end

    end
  end
end
