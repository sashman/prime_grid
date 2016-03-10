module PrimeGrid
  module Controllers
    class PrimeGridController
      require 'prime_grid/integer/integer_prime_generation'
      require 'prime_grid/grid_data/grid_model'

      include PrimeGrid::Integer::PrimeGeneration

      def prime_grid prime_count

        PrimeGrid::GridData::GridModel.create_product_grid take_primes(prime_count)

      end

      def console_prime_grid prime_count

        grid = prime_grid prime_count
        puts grid.column_headers.join '|'

      end

    end
  end
end
