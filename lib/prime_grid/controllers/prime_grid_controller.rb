module PrimeGrid
  module Controllers
    class PrimeGridController
      require 'prime_grid/integer/integer_prime_generation'
      require 'prime_grid/grid_data/grid_model'
      require 'prime_grid/utils/view_renderer'
      require 'prime_grid/utils/grid_model_helper'

      include PrimeGrid::Integer::PrimeGeneration

      def prime_grid prime_count

        PrimeGrid::GridData::GridModel.create_product_grid take_primes(prime_count)

      end

      def console_prime_grid prime_count

        grid = prime_grid prime_count
        padding = PrimeGrid::Utils::GridModelHelper.max_prime_grid_padding grid
        puts PrimeGrid::Utils::ViewRenderer.render_erb :console_grid, grid: grid, padding: padding

      end

    end
  end
end
