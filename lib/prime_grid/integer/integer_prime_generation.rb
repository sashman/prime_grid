module PrimeGrid
  module Integer
    module PrimeGeneration

      LOWEST_PRIME = 2

      def is_prime? number
        Integer(number) rescue raise ArgumentError.new('Input must be an integer')
        raise ArgumentError.new('Input must be an integer') unless number.to_i == number

        return false if number <= 1
        LOWEST_PRIME.upto(highest_integer_to_check(number)) do |i|
          return false if number_divisible_by(number, i)
        end
        true
      end

      def next_prime number = nil
        return LOWEST_PRIME unless number
        next_number = number + 1
        next_number = next_number + 1 until is_prime? next_number
        next_number
      end

      def take_primes prime_count

        prime_enumerator = Enumerator.new do |prime_array|
          prime_number = LOWEST_PRIME
          loop do
            prime_array << prime_number
            prime_number = next_prime prime_number
          end
        end

        prime_enumerator.take prime_count

      end

      private
      def number_divisible_by(number, i)
        number % i == 0
      end

      private
      def highest_integer_to_check(number)
        Math.sqrt(number).to_i
      end

    end
  end
end