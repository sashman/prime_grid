require "prime_grid/version"
require "prime_grid/integer/integer_prime_generation"
require "prime_grid/grid_data/grid_model"
require "prime_grid/controllers/prime_grid_controller"

module PrimeGrid

  def render_console prime_count
    controller = PrimeGrid::Controllers::PrimeGridController.new
    controller.console_prime_grid prime_count.to_i
  end

  def get_model prime_count
    controller = PrimeGrid::Controllers::PrimeGridController.new
    controller.prime_grid prime_count.to_i
  end

end
