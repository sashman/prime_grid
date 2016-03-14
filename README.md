# prime_grid
A ruby gem to create a grid of products of generated prime numbers. For example give an input of 5:
```
___|  2|  3|  5|  7| 11
  2|  4|  6| 10| 14| 22
  3|  6|  9| 15| 21| 33
  5| 10| 15| 25| 35| 55
  7| 14| 21| 35| 49| 77
 11| 22| 33| 55| 77|121
```

## Prerequisites

* Ruby 2 and above
* Ruby gems
* Ruby bundler

Run `bundle install` to install the required dependencies for running and testing the gem.

## Usage

Use rake task to generate a console output:

`rake prime_grid:console[N]` where `N` is the number of primes to be generated

Example:

```
> rake prime_grid:console[1]
_|2
2|4
```

## Tests

Run `rspec` or `rake spec`.

## Using with docker

If docker is available, you can avoid installing dependcies.

* Build image `docker build -t prime-docker .`
* Run rake task `docker run prime-docker rake prime_grid:console[6]`
* Run tests `docker run prime-docker rspec`

## Conclusion

I am happy with the test drive approach, both TDD and BDD, that I have applied as well as the modular structure of the gem. Specifically the loose coupling of the grid model and the prime number generation. The cell padding calculation is specific to the type of data contained in the grid and is integrated through the specifc controller. The creation of the model's cell values is also easily extensible by implementing a single method taking code block with the value calculation.

Given extra time multiple areas of the gem can be handled:
* I could use cucumber/gherkin for actual acceptances tests.
* Since this a ruby gem it should be easily imported into rails/sinatra frame work for a web view.
* A more efficient prime generation algorithm can be investigated.


## Installation as a gem

Add this line to your application's Gemfile:

```ruby
gem 'prime_grid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prime_grid
    
Create a grid model with:

`get_model 123`
