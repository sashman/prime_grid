require "prime_grid/version"

module PrimeGrid

  module Integer
    module PrimeGeneration

      def is_prime? number
        raise ArgumentError.new('Input must be an integer') unless number.is_a? Integer

        return false if number <= 1
        2.upto(Math.sqrt(number).to_i) do |i|
          return false if number % i == 0
        end
        true
      end

      def next_prime
        2
      end

    end
  end

end
