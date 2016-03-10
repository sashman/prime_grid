module PrimeGrid
  module GridData
    class GridModel

      def initialize grid_data, headers
        @grid_data = grid_data
        @headers = headers
      end

      def self.create_product_grid header_values

        raise ArgumentError if header_values.nil? || (!header_values.is_a? Array) || header_values.empty?

        product_data = Array.new(header_values.count) { |y| Array.new(header_values.count) { |x|
          header_value_product(header_values, x, y)
        } }

        GridModel.new product_data, header_values

      end

      def value_at x, y
        @grid_data[y][x]
      end

      def column_headers
        @headers
      end

      def row_headers
        @headers
      end

      def row_values index
        @grid_data[index]
      end

      private
      def self.header_value_product(header_values, x, y)
        header_values[x] * header_values[y]
      end

    end
  end
end
