require "prime_grid/version"

module PrimeGrid

  module Integer
    module PrimeGeneration

      def is_prime? number
        Integer(number) rescue raise ArgumentError.new('Input must be an integer')
        raise ArgumentError.new('Input must be an integer') unless number.to_i == number

        return false if number <= 1
        2.upto(Math.sqrt(number).to_i) do |i|
          return false if number % i == 0
        end
        true
      end

      def next_prime number = nil
        return 2 unless number
        next_number = number + 1
        next_number = next_number + 1 until is_prime? next_number
        next_number
      end

      def take_primes prime_count

        prime_enumerator = Enumerator.new do |prime_array|
          prime_number = 2
          loop do
            prime_array << prime_number
            prime_number = next_prime prime_number
          end
        end

        prime_enumerator.take prime_count

      end

    end
  end

end
