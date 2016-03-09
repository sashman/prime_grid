# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_grid/version'

Gem::Specification.new do |spec|
  spec.name          = "prime_grid"
  spec.version       = PrimeGrid::VERSION
  spec.authors       = ["Sash"]
  spec.email         = ["sashman90@gmail.com"]
  spec.summary       = %q{A ruby gem to create a grid of products of generated prime numbers}
  spec.description   = ''
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
